// ignore_for_file: unused_element, unnecessary_cast


class EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyCacheKeyPolicy {
  /// If true, requests to different hosts will be cached separately.
  /// Note: this should only be enabled if hosts share the same origin and content. Removing the host from the cache key may inadvertently result in different objects being cached than intended, depending on which route the first user matched.
  final bool? excludeHost;
  /// If true, exclude query string parameters from the cache key
  /// If false (the default), include the query string parameters in
  /// the cache key according to includeQueryParameters and
  /// excludeQueryParameters. If neither includeQueryParameters nor
  /// excludeQueryParameters is set, the entire query string will be
  /// included.
  final bool? excludeQueryString;
  /// Names of query string parameters to exclude from cache keys. All other parameters will be included.
  /// Either specify includedQueryParameters or excludedQueryParameters, not both. '&' and '=' will be percent encoded and not treated as delimiters.
  final List<String>? excludedQueryParameters;
  /// If true, http and https requests will be cached separately.
  final bool? includeProtocol;
  /// Names of Cookies to include in cache keys.  The cookie name and cookie value of each cookie named will be used as part of the cache key.
  /// Cookie names:
  /// - must be valid RFC 6265 "cookie-name" tokens
  /// - are case sensitive
  /// - cannot start with "Edge-Cache-" (case insensitive)
  /// Note that specifying several cookies, and/or cookies that have a large range of values (e.g., per-user) will dramatically impact the cache hit rate, and may result in a higher eviction rate and reduced performance.
  /// You may specify up to three cookie names.
  final List<String>? includedCookieNames;
  /// Names of HTTP request headers to include in cache keys. The value of the header field will be used as part of the cache key.
  /// - Header names must be valid HTTP RFC 7230 header field values.
  /// - Header field names are case insensitive
  /// - To include the HTTP method, use ":method"
  /// Note that specifying several headers, and/or headers that have a large range of values (e.g. per-user) will dramatically impact the cache hit rate, and may result in a higher eviction rate and reduced performance.
  final List<String>? includedHeaderNames;
  /// Names of query string parameters to include in cache keys. All other parameters will be excluded.
  /// Either specify includedQueryParameters or excludedQueryParameters, not both. '&' and '=' will be percent encoded and not treated as delimiters.
  final List<String>? includedQueryParameters;

  /// Creates a new [EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyCacheKeyPolicy].
  /// [excludeHost] If true, requests to different hosts will be cached separately.
  /// [excludeQueryString] If true, exclude query string parameters from the cache key
  /// [excludedQueryParameters] Names of query string parameters to exclude from cache keys. All other parameters will be included.
  /// [includeProtocol] If true, http and https requests will be cached separately.
  /// [includedCookieNames] Names of Cookies to include in cache keys.  The cookie name and cookie value of each cookie named will be used as part of the cache key.
  /// [includedHeaderNames] Names of HTTP request headers to include in cache keys. The value of the header field will be used as part of the cache key.
  /// [includedQueryParameters] Names of query string parameters to include in cache keys. All other parameters will be excluded.
  EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyCacheKeyPolicy({
    this.excludeHost,
    this.excludeQueryString,
    this.excludedQueryParameters,
    this.includeProtocol,
    this.includedCookieNames,
    this.includedHeaderNames,
    this.includedQueryParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeHost': ?excludeHost,
      'excludeQueryString': ?excludeQueryString,
      'excludedQueryParameters': ?excludedQueryParameters,
      'includeProtocol': ?includeProtocol,
      'includedCookieNames': ?includedCookieNames,
      'includedHeaderNames': ?includedHeaderNames,
      'includedQueryParameters': ?includedQueryParameters,
    };
  }

  factory EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyCacheKeyPolicy.fromMap(Map<String, dynamic> map) {
    return EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCdnPolicyCacheKeyPolicy(
      excludeHost: map['excludeHost'] == null ? null : map['excludeHost'] as bool,
      excludeQueryString: map['excludeQueryString'] == null ? null : map['excludeQueryString'] as bool,
      excludedQueryParameters: map['excludedQueryParameters'] == null ? null : (map['excludedQueryParameters'] as List).cast<String>(),
      includeProtocol: map['includeProtocol'] == null ? null : map['includeProtocol'] as bool,
      includedCookieNames: map['includedCookieNames'] == null ? null : (map['includedCookieNames'] as List).cast<String>(),
      includedHeaderNames: map['includedHeaderNames'] == null ? null : (map['includedHeaderNames'] as List).cast<String>(),
      includedQueryParameters: map['includedQueryParameters'] == null ? null : (map['includedQueryParameters'] as List).cast<String>(),
    );
  }
}

