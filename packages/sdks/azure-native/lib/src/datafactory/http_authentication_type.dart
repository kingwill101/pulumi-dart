/// The authentication type to be used to connect to the HTTP server.
enum HttpAuthenticationType {
  basic("Basic"),
  anonymous("Anonymous"),
  digest("Digest"),
  windows("Windows"),
  clientCertificate("ClientCertificate");

  const HttpAuthenticationType(this.wireValue);
  final String wireValue;

  static HttpAuthenticationType fromValue(String value) {
    for (final item in HttpAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HttpAuthenticationType value: $value');
  }
}
