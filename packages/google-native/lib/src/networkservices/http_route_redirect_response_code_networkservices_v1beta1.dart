/// The HTTP Status code to use for the redirect.
enum HttpRouteRedirectResponseCodeNetworkservicesV1beta1 {
  responseCodeUnspecified("RESPONSE_CODE_UNSPECIFIED"),
  movedPermanentlyDefault("MOVED_PERMANENTLY_DEFAULT"),
  found("FOUND"),
  seeOther("SEE_OTHER"),
  temporaryRedirect("TEMPORARY_REDIRECT"),
  permanentRedirect("PERMANENT_REDIRECT");

  const HttpRouteRedirectResponseCodeNetworkservicesV1beta1(this.value);
  final String value;

  static HttpRouteRedirectResponseCodeNetworkservicesV1beta1 fromValue(
    String value,
  ) {
    for (final item
        in HttpRouteRedirectResponseCodeNetworkservicesV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown HttpRouteRedirectResponseCodeNetworkservicesV1beta1 value: $value',
    );
  }
}
