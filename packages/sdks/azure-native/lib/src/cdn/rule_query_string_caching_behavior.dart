/// Defines how Frontdoor caches requests that include query strings. You can ignore any query strings when caching, ignore specific query strings, cache every request with a unique URL, or cache specific query strings.
enum RuleQueryStringCachingBehavior {
  ignoreQueryString("IgnoreQueryString"),
  useQueryString("UseQueryString"),
  ignoreSpecifiedQueryStrings("IgnoreSpecifiedQueryStrings"),
  includeSpecifiedQueryStrings("IncludeSpecifiedQueryStrings");

  const RuleQueryStringCachingBehavior(this.value);
  final String value;

  static RuleQueryStringCachingBehavior fromValue(String value) {
    for (final item in RuleQueryStringCachingBehavior.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleQueryStringCachingBehavior value: $value');
  }
}

