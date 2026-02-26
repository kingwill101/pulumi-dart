/// 30x code to use when performing redirects for the secure field. Defaults to 302.
enum UrlMapRedirectHttpResponseCode2 {
  redirectHttpResponseCodeUnspecified(
      "REDIRECT_HTTP_RESPONSE_CODE_UNSPECIFIED"),
  redirectHttpResponseCode301("REDIRECT_HTTP_RESPONSE_CODE_301"),
  redirectHttpResponseCode302("REDIRECT_HTTP_RESPONSE_CODE_302"),
  redirectHttpResponseCode303("REDIRECT_HTTP_RESPONSE_CODE_303"),
  redirectHttpResponseCode307("REDIRECT_HTTP_RESPONSE_CODE_307");

  const UrlMapRedirectHttpResponseCode2(this.value);
  final String value;

  static UrlMapRedirectHttpResponseCode2 fromValue(String value) {
    for (final item in UrlMapRedirectHttpResponseCode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown UrlMapRedirectHttpResponseCode2 value: $value');
  }
}
