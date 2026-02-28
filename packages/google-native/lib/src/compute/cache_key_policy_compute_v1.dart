// ignore_for_file: unused_element, unnecessary_cast

/// Message containing what to include in the cache key for a request for Cloud CDN.
class CacheKeyPolicyComputeV1 {
  /// If true, requests to different hosts will be cached separately.
  final bool? includeHost;

  /// Allows HTTP request headers (by name) to be used in the cache key.
  final List<String>? includeHttpHeaders;

  /// Allows HTTP cookies (by name) to be used in the cache key. The name=value pair will be used in the cache key Cloud CDN generates.
  final List<String>? includeNamedCookies;

  /// If true, http and https requests will be cached separately.
  final bool? includeProtocol;

  /// If true, include query string parameters in the cache key according to query_string_whitelist and query_string_blacklist. If neither is set, the entire query string will be included. If false, the query string will be excluded from the cache key entirely.
  final bool? includeQueryString;

  /// Names of query string parameters to exclude in cache keys. All other parameters will be included. Either specify query_string_whitelist or query_string_blacklist, not both. '&' and '=' will be percent encoded and not treated as delimiters.
  final List<String>? queryStringBlacklist;

  /// Names of query string parameters to include in cache keys. All other parameters will be excluded. Either specify query_string_whitelist or query_string_blacklist, not both. '&' and '=' will be percent encoded and not treated as delimiters.
  final List<String>? queryStringWhitelist;

  /// Creates a new [CacheKeyPolicyComputeV1].
  /// [includeHost] If true, requests to different hosts will be cached separately.
  /// [includeHttpHeaders] Allows HTTP request headers (by name) to be used in the cache key.
  /// [includeNamedCookies] Allows HTTP cookies (by name) to be used in the cache key. The name=value pair will be used in the cache key Cloud CDN generates.
  /// [includeProtocol] If true, http and https requests will be cached separately.
  /// [includeQueryString] If true, include query string parameters in the cache key according to query_string_whitelist and query_string_blacklist. If neither is set, the entire query string will be included. If false, the query string will be excluded from the cache key entirely.
  /// [queryStringBlacklist] Names of query string parameters to exclude in cache keys. All other parameters will be included. Either specify query_string_whitelist or query_string_blacklist, not both. '&' and '=' will be percent encoded and not treated as delimiters.
  /// [queryStringWhitelist] Names of query string parameters to include in cache keys. All other parameters will be excluded. Either specify query_string_whitelist or query_string_blacklist, not both. '&' and '=' will be percent encoded and not treated as delimiters.
  CacheKeyPolicyComputeV1({
    this.includeHost,
    this.includeHttpHeaders,
    this.includeNamedCookies,
    this.includeProtocol,
    this.includeQueryString,
    this.queryStringBlacklist,
    this.queryStringWhitelist,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final includeHostValue = includeHost;
    if (includeHostValue != null) {
      map['includeHost'] = includeHostValue;
    }
    final includeHttpHeadersValue = includeHttpHeaders;
    if (includeHttpHeadersValue != null) {
      map['includeHttpHeaders'] = includeHttpHeadersValue;
    }
    final includeNamedCookiesValue = includeNamedCookies;
    if (includeNamedCookiesValue != null) {
      map['includeNamedCookies'] = includeNamedCookiesValue;
    }
    final includeProtocolValue = includeProtocol;
    if (includeProtocolValue != null) {
      map['includeProtocol'] = includeProtocolValue;
    }
    final includeQueryStringValue = includeQueryString;
    if (includeQueryStringValue != null) {
      map['includeQueryString'] = includeQueryStringValue;
    }
    final queryStringBlacklistValue = queryStringBlacklist;
    if (queryStringBlacklistValue != null) {
      map['queryStringBlacklist'] = queryStringBlacklistValue;
    }
    final queryStringWhitelistValue = queryStringWhitelist;
    if (queryStringWhitelistValue != null) {
      map['queryStringWhitelist'] = queryStringWhitelistValue;
    }
    return map;
  }

  factory CacheKeyPolicyComputeV1.fromMap(Map<String, dynamic> map) {
    return CacheKeyPolicyComputeV1(
      includeHost:
          map['includeHost'] == null ? null : map['includeHost'] as bool,
      includeHttpHeaders: map['includeHttpHeaders'] == null
          ? null
          : (map['includeHttpHeaders'] as List).cast<String>(),
      includeNamedCookies: map['includeNamedCookies'] == null
          ? null
          : (map['includeNamedCookies'] as List).cast<String>(),
      includeProtocol: map['includeProtocol'] == null
          ? null
          : map['includeProtocol'] as bool,
      includeQueryString: map['includeQueryString'] == null
          ? null
          : map['includeQueryString'] as bool,
      queryStringBlacklist: map['queryStringBlacklist'] == null
          ? null
          : (map['queryStringBlacklist'] as List).cast<String>(),
      queryStringWhitelist: map['queryStringWhitelist'] == null
          ? null
          : (map['queryStringWhitelist'] as List).cast<String>(),
    );
  }
}
