function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%i

dist = zeros(K,1);
k = size(X, 1);

for j = 1 : k
    
    c = (X(j,:) - centroids).^2;
    
    for i = 1 : K 
        
        dist(i) = sum(c(i,:));

    end
    
    [~,idx(j)] = min(dist);
    
    
end


% 
% for i = 1:length(idx)
% 	% initialise the lengths vector
% 	lengths_to_centroids = zeros(K, 1);
% 	
% 	% for every centroid, calculate the distance to the example
%     for k=1:K
% 		% distance from example to current centroid
% 		lengths_to_centroids(k) = sum((X(i, :) - centroids(k, :)).^2);
%     end
% 	
% 	% choose the centroid which is closest (min distance)
% 	[~, ix] = min(lengths_to_centroids);
% 	
% 	% remember it
% 	idx(i) = ix;
% 	
% end
% =============================================================

end

