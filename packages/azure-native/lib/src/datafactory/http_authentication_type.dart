/// The authentication type to be used to connect to the HTTP server.
enum HttpAuthenticationType {
  valueBasic("Basic"),
  valueAnonymous("Anonymous"),
  valueDigest("Digest"),
  valueWindows("Windows"),
  valueClientCertificate("ClientCertificate");

  const HttpAuthenticationType(this.value);
  final String value;

  static HttpAuthenticationType fromValue(String value) {
    for (final item in HttpAuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HttpAuthenticationType value: $value');
  }
}

