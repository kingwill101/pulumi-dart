// ignore_for_file: unused_element, unnecessary_cast

class RegionBackendServiceCdnPolicyCacheKeyPolicy {
  /// If true requests to different hosts will be cached separately.
  final bool? includeHost;

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

  RegionBackendServiceCdnPolicyCacheKeyPolicy({
    this.includeHost,
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

  factory RegionBackendServiceCdnPolicyCacheKeyPolicy.fromMap(
      Map<String, dynamic> map) {
    return RegionBackendServiceCdnPolicyCacheKeyPolicy(
      includeHost:
          map['includeHost'] == null ? null : map['includeHost'] as bool,
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
