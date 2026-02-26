// ignore_for_file: unused_element, unnecessary_cast

class BackendServiceCdnPolicyCacheKeyPolicy {
  /// If true requests to different hosts will be cached separately.
  final bool? includeHost;

  /// Allows HTTP request headers (by name) to be used in the
  /// cache key.
  final List<String>? includeHttpHeaders;

  /// Names of cookies to include in cache keys.
  final List<String>? includeNamedCookies;

  /// If true, http and https requests will be cached separately.
  final bool? includeProtocol;

  /// If true, include query string parameters in the cache key
  /// according to<span pulumi-lang-nodejs=" queryStringWhitelist " pulumi-lang-dotnet=" QueryStringWhitelist " pulumi-lang-go=" queryStringWhitelist " pulumi-lang-python=" query_string_whitelist " pulumi-lang-yaml=" queryStringWhitelist " pulumi-lang-java=" queryStringWhitelist "> query_string_whitelist </span>and
  /// query_string_blacklist. If neither is set, the entire query
  /// string will be included.
  /// If false, the query string will be excluded from the cache
  /// key entirely.
  final bool? includeQueryString;

  /// Names of query string parameters to exclude in cache keys.
  /// All other parameters will be included. Either specify<span pulumi-lang-nodejs="
  /// queryStringWhitelist " pulumi-lang-dotnet="
  /// QueryStringWhitelist " pulumi-lang-go="
  /// queryStringWhitelist " pulumi-lang-python="
  /// query_string_whitelist " pulumi-lang-yaml="
  /// queryStringWhitelist " pulumi-lang-java="
  /// queryStringWhitelist ">
  /// query_string_whitelist </span>or query_string_blacklist, not both.
  /// '&' and '=' will be percent encoded and not treated as
  /// delimiters.
  final List<String>? queryStringBlacklists;

  /// Names of query string parameters to include in cache keys.
  /// All other parameters will be excluded. Either specify<span pulumi-lang-nodejs="
  /// queryStringWhitelist " pulumi-lang-dotnet="
  /// QueryStringWhitelist " pulumi-lang-go="
  /// queryStringWhitelist " pulumi-lang-python="
  /// query_string_whitelist " pulumi-lang-yaml="
  /// queryStringWhitelist " pulumi-lang-java="
  /// queryStringWhitelist ">
  /// query_string_whitelist </span>or query_string_blacklist, not both.
  /// '&' and '=' will be percent encoded and not treated as
  /// delimiters.
  final List<String>? queryStringWhitelists;

  BackendServiceCdnPolicyCacheKeyPolicy({
    this.includeHost,
    this.includeHttpHeaders,
    this.includeNamedCookies,
    this.includeProtocol,
    this.includeQueryString,
    this.queryStringBlacklists,
    this.queryStringWhitelists,
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
    final queryStringBlacklistsValue = queryStringBlacklists;
    if (queryStringBlacklistsValue != null) {
      map['queryStringBlacklists'] = queryStringBlacklistsValue;
    }
    final queryStringWhitelistsValue = queryStringWhitelists;
    if (queryStringWhitelistsValue != null) {
      map['queryStringWhitelists'] = queryStringWhitelistsValue;
    }
    return map;
  }

  factory BackendServiceCdnPolicyCacheKeyPolicy.fromMap(
      Map<String, dynamic> map) {
    return BackendServiceCdnPolicyCacheKeyPolicy(
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
      queryStringBlacklists: map['queryStringBlacklists'] == null
          ? null
          : (map['queryStringBlacklists'] as List).cast<String>(),
      queryStringWhitelists: map['queryStringWhitelists'] == null
          ? null
          : (map['queryStringWhitelists'] as List).cast<String>(),
    );
  }
}
