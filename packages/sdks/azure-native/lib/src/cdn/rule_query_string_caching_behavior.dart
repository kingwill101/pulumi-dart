import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines how Frontdoor caches requests that include query strings. You can ignore any query strings when caching, ignore specific query strings, cache every request with a unique URL, or cache specific query strings.
enum RuleQueryStringCachingBehavior implements pulumi.PulumiEnum<String> {
  ignoreQueryString("IgnoreQueryString"),
  useQueryString("UseQueryString"),
  ignoreSpecifiedQueryStrings("IgnoreSpecifiedQueryStrings"),
  includeSpecifiedQueryStrings("IncludeSpecifiedQueryStrings");

  const RuleQueryStringCachingBehavior(this.wireValue);
  @override
  final String wireValue;

  static RuleQueryStringCachingBehavior fromValue(String value) {
    for (final item in RuleQueryStringCachingBehavior.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleQueryStringCachingBehavior value: $value');
  }
}
