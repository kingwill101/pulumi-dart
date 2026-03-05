/// Defines how CDN caches requests that include query strings. You can ignore any query strings when caching, bypass caching to prevent requests that contain query strings from being cached, or cache every request with a unique URL.
enum QueryStringCachingBehavior {
  valueIgnoreQueryString("IgnoreQueryString"),
  valueBypassCaching("BypassCaching"),
  valueUseQueryString("UseQueryString"),
  valueNotSet("NotSet");

  const QueryStringCachingBehavior(this.wireValue);
  final String wireValue;

  static QueryStringCachingBehavior fromValue(String value) {
    for (final item in QueryStringCachingBehavior.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown QueryStringCachingBehavior value: $value');
  }
}

