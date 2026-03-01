/// Defines how Frontdoor caches requests that include query strings. You can ignore any query strings when caching, ignore specific query strings, cache every request with a unique URL, or cache specific query strings.
enum AfdQueryStringCachingBehavior {
  ignoreQueryString("IgnoreQueryString"),
  useQueryString("UseQueryString"),
  ignoreSpecifiedQueryStrings("IgnoreSpecifiedQueryStrings"),
  includeSpecifiedQueryStrings("IncludeSpecifiedQueryStrings");

  const AfdQueryStringCachingBehavior(this.value);
  final String value;

  static AfdQueryStringCachingBehavior fromValue(String value) {
    for (final item in AfdQueryStringCachingBehavior.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AfdQueryStringCachingBehavior value: $value');
  }
}

