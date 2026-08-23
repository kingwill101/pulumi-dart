/// Whether to automatically redirect HTTP traffic to HTTPS traffic. Note that this is a easy way to set up this rule and it will be the first rule that gets executed.
enum HttpsRedirect {
  enabled("Enabled"),
  disabled("Disabled");

  const HttpsRedirect(this.wireValue);
  final String wireValue;

  static HttpsRedirect fromValue(String value) {
    for (final item in HttpsRedirect.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HttpsRedirect value: $value');
  }
}
