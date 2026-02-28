// ignore_for_file: unused_element, unnecessary_cast

class GetBackendBucketCdnPolicyCacheKeyPolicy {
  /// Allows HTTP request headers (by name) to be used in the
  /// cache key.
  final List<String> includeHttpHeaders;

  /// Names of query string parameters to include in cache keys.
  /// Default parameters are always included. '&' and '=' will
  /// be percent encoded and not treated as delimiters.
  final List<String> queryStringWhitelists;

  /// Creates a new [GetBackendBucketCdnPolicyCacheKeyPolicy].
  /// [includeHttpHeaders] Allows HTTP request headers (by name) to be used in the
  /// [queryStringWhitelists] Names of query string parameters to include in cache keys.
  GetBackendBucketCdnPolicyCacheKeyPolicy({
    required this.includeHttpHeaders,
    required this.queryStringWhitelists,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['includeHttpHeaders'] = includeHttpHeaders;
    map['queryStringWhitelists'] = queryStringWhitelists;
    return map;
  }

  factory GetBackendBucketCdnPolicyCacheKeyPolicy.fromMap(
      Map<String, dynamic> map) {
    return GetBackendBucketCdnPolicyCacheKeyPolicy(
      includeHttpHeaders: (map['includeHttpHeaders'] as List).cast<String>(),
      queryStringWhitelists:
          (map['queryStringWhitelists'] as List).cast<String>(),
    );
  }
}
