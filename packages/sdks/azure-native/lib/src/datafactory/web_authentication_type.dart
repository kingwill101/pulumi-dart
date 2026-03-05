/// Type of authentication used to connect to the web table source.
enum WebAuthenticationType {
  valueBasic("Basic"),
  valueAnonymous("Anonymous"),
  valueClientCertificate("ClientCertificate");

  const WebAuthenticationType(this.wireValue);
  final String wireValue;

  static WebAuthenticationType fromValue(String value) {
    for (final item in WebAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebAuthenticationType value: $value');
  }
}

