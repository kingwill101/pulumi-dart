import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of authentication used to connect to the web table source.
enum WebAuthenticationType implements pulumi.PulumiEnum<String> {
  basic("Basic"),
  anonymous("Anonymous"),
  clientCertificate("ClientCertificate");

  const WebAuthenticationType(this.wireValue);
  @override
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
