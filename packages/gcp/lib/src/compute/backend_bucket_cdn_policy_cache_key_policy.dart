// ignore_for_file: unused_element, unnecessary_cast

class BackendBucketCdnPolicyCacheKeyPolicy {
  /// Allows HTTP request headers (by name) to be used in the
  /// cache key.
  final List<String>? includeHttpHeaders;

  /// Names of query string parameters to include in cache keys.
  /// Default parameters are always included. '&' and '=' will
  /// be percent encoded and not treated as delimiters.
  final List<String>? queryStringWhitelists;

  /// Creates a new [BackendBucketCdnPolicyCacheKeyPolicy].
  /// [includeHttpHeaders] Allows HTTP request headers (by name) to be used in the
  /// [queryStringWhitelists] Names of query string parameters to include in cache keys.
  BackendBucketCdnPolicyCacheKeyPolicy({
    this.includeHttpHeaders,
    this.queryStringWhitelists,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final includeHttpHeadersValue = includeHttpHeaders;
    if (includeHttpHeadersValue != null) {
      map['includeHttpHeaders'] = includeHttpHeadersValue;
    }
    final queryStringWhitelistsValue = queryStringWhitelists;
    if (queryStringWhitelistsValue != null) {
      map['queryStringWhitelists'] = queryStringWhitelistsValue;
    }
    return map;
  }

  factory BackendBucketCdnPolicyCacheKeyPolicy.fromMap(
      Map<String, dynamic> map) {
    return BackendBucketCdnPolicyCacheKeyPolicy(
      includeHttpHeaders: map['includeHttpHeaders'] == null
          ? null
          : (map['includeHttpHeaders'] as List).cast<String>(),
      queryStringWhitelists: map['queryStringWhitelists'] == null
          ? null
          : (map['queryStringWhitelists'] as List).cast<String>(),
    );
  }
}
