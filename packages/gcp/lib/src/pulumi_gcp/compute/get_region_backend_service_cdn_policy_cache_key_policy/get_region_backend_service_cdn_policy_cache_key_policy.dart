// ignore_for_file: unused_element, unnecessary_cast

class GetRegionBackendServiceCdnPolicyCacheKeyPolicy {
  /// If true requests to different hosts will be cached separately.
  final bool includeHost;

  /// Names of cookies to include in cache keys.
  final List<String> includeNamedCookies;

  /// If true, http and https requests will be cached separately.
  final bool includeProtocol;

  /// If true, include query string parameters in the cache key
  /// according to<span pulumi-lang-nodejs=" queryStringWhitelist " pulumi-lang-dotnet=" QueryStringWhitelist " pulumi-lang-go=" queryStringWhitelist " pulumi-lang-python=" query_string_whitelist " pulumi-lang-yaml=" queryStringWhitelist " pulumi-lang-java=" queryStringWhitelist "> query_string_whitelist </span>and
  /// query_string_blacklist. If neither is set, the entire query
  /// string will be included.
  ///
  /// If false, the query string will be excluded from the cache
  /// key entirely.
  final bool includeQueryString;

  /// Names of query string parameters to exclude in cache keys.
  ///
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
  final List<String> queryStringBlacklists;

  /// Names of query string parameters to include in cache keys.
  ///
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
  final List<String> queryStringWhitelists;

  GetRegionBackendServiceCdnPolicyCacheKeyPolicy({
    required this.includeHost,
    required this.includeNamedCookies,
    required this.includeProtocol,
    required this.includeQueryString,
    required this.queryStringBlacklists,
    required this.queryStringWhitelists,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['includeHost'] = includeHost;
    map['includeNamedCookies'] = includeNamedCookies;
    map['includeProtocol'] = includeProtocol;
    map['includeQueryString'] = includeQueryString;
    map['queryStringBlacklists'] = queryStringBlacklists;
    map['queryStringWhitelists'] = queryStringWhitelists;
    return map;
  }

  factory GetRegionBackendServiceCdnPolicyCacheKeyPolicy.fromMap(
      Map<String, dynamic> map) {
    return GetRegionBackendServiceCdnPolicyCacheKeyPolicy(
      includeHost: map['includeHost'] as bool,
      includeNamedCookies: (map['includeNamedCookies'] as List).cast<String>(),
      includeProtocol: map['includeProtocol'] as bool,
      includeQueryString: map['includeQueryString'] as bool,
      queryStringBlacklists:
          (map['queryStringBlacklists'] as List).cast<String>(),
      queryStringWhitelists:
          (map['queryStringWhitelists'] as List).cast<String>(),
    );
  }
}
