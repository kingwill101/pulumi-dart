/// The HTTP Status code to use for the redirect.
enum HttpRouteRedirectResponseCode2 {
  responseCodeUnspecified("RESPONSE_CODE_UNSPECIFIED"),
  movedPermanentlyDefault("MOVED_PERMANENTLY_DEFAULT"),
  found("FOUND"),
  seeOther("SEE_OTHER"),
  temporaryRedirect("TEMPORARY_REDIRECT"),
  permanentRedirect("PERMANENT_REDIRECT");

  const HttpRouteRedirectResponseCode2(this.value);
  final String value;

  static HttpRouteRedirectResponseCode2 fromValue(String value) {
    for (final item in HttpRouteRedirectResponseCode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HttpRouteRedirectResponseCode2 value: $value');
  }
}
