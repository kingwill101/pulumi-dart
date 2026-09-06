import 'package:pulumi/pulumi.dart' as pulumi;

/// Mode of TLS server certificate management.
enum TlsCertMethodMode implements pulumi.PulumiEnum<String> {
  automatic("Automatic"),
  manual("Manual");

  const TlsCertMethodMode(this.wireValue);
  @override
  final String wireValue;

  static TlsCertMethodMode fromValue(String value) {
    for (final item in TlsCertMethodMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TlsCertMethodMode value: $value');
  }
}
