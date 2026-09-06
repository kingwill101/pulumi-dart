import 'package:pulumi/pulumi.dart' as pulumi;

/// Verify client certificate revocation status.
enum ApplicationGatewayClientRevocationOptions implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueOCSP("OCSP");

  const ApplicationGatewayClientRevocationOptions(this.wireValue);
  @override
  final String wireValue;

  static ApplicationGatewayClientRevocationOptions fromValue(String value) {
    for (final item in ApplicationGatewayClientRevocationOptions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationGatewayClientRevocationOptions value: $value');
  }
}
