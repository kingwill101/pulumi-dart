import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication type to be used to connect to the HTTP server.
enum HttpAuthenticationType implements pulumi.PulumiEnum<String> {
  basic("Basic"),
  anonymous("Anonymous"),
  digest("Digest"),
  windows("Windows"),
  clientCertificate("ClientCertificate");

  const HttpAuthenticationType(this.wireValue);
  @override
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
