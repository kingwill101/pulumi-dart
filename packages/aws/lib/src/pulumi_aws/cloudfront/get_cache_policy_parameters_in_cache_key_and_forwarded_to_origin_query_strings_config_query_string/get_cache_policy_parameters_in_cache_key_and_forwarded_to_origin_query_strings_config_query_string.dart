// ignore_for_file: unused_element, unnecessary_cast

class GetCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryString {
  /// List of item names (<span pulumi-lang-nodejs="`cookies`" pulumi-lang-dotnet="`Cookies`" pulumi-lang-go="`cookies`" pulumi-lang-python="`cookies`" pulumi-lang-yaml="`cookies`" pulumi-lang-java="`cookies`">`cookies`</span>, <span pulumi-lang-nodejs="`headers`" pulumi-lang-dotnet="`Headers`" pulumi-lang-go="`headers`" pulumi-lang-python="`headers`" pulumi-lang-yaml="`headers`" pulumi-lang-java="`headers`">`headers`</span>, or <span pulumi-lang-nodejs="`queryStrings`" pulumi-lang-dotnet="`QueryStrings`" pulumi-lang-go="`queryStrings`" pulumi-lang-python="`query_strings`" pulumi-lang-yaml="`queryStrings`" pulumi-lang-java="`queryStrings`">`query_strings`</span>).
  final List<String> items;

  GetCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryString({
    required this.items,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['items'] = items;
    return map;
  }

  factory GetCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryString.fromMap(
      Map<String, dynamic> map) {
    return GetCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryString(
      items: (map['items'] as List).cast<String>(),
    );
  }
}
