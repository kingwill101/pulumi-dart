// ignore_for_file: unused_element, unnecessary_cast

/// Message containing what to include in the cache key for a request for Cloud CDN.
class BackendBucketCdnPolicyCacheKeyPolicy {
  /// Allows HTTP request headers (by name) to be used in the cache key.
  final List<String>? includeHttpHeaders;

  /// Names of query string parameters to include in cache keys. Default parameters are always included. '&' and '=' will be percent encoded and not treated as delimiters.
  final List<String>? queryStringWhitelist;

  /// Creates a new [BackendBucketCdnPolicyCacheKeyPolicy].
  /// [includeHttpHeaders] Allows HTTP request headers (by name) to be used in the cache key.
  /// [queryStringWhitelist] Names of query string parameters to include in cache keys. Default parameters are always included. '&' and '=' will be percent encoded and not treated as delimiters.
  BackendBucketCdnPolicyCacheKeyPolicy({
    this.includeHttpHeaders,
    this.queryStringWhitelist,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final includeHttpHeadersValue = includeHttpHeaders;
    if (includeHttpHeadersValue != null) {
      map['includeHttpHeaders'] = includeHttpHeadersValue;
    }
    final queryStringWhitelistValue = queryStringWhitelist;
    if (queryStringWhitelistValue != null) {
      map['queryStringWhitelist'] = queryStringWhitelistValue;
    }
    return map;
  }

  factory BackendBucketCdnPolicyCacheKeyPolicy.fromMap(
      Map<String, dynamic> map) {
    return BackendBucketCdnPolicyCacheKeyPolicy(
      includeHttpHeaders: map['includeHttpHeaders'] == null
          ? null
          : (map['includeHttpHeaders'] as List).cast<String>(),
      queryStringWhitelist: map['queryStringWhitelist'] == null
          ? null
          : (map['queryStringWhitelist'] as List).cast<String>(),
    );
  }
}
