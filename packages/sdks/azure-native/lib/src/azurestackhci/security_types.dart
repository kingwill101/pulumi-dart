import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the SecurityType of the virtual machine. EnableTPM and SecureBootEnabled must be set to true for SecurityType to function.
enum SecurityTypes implements pulumi.PulumiEnum<String> {
  trustedLaunch("TrustedLaunch"),
  confidentialVM("ConfidentialVM");

  const SecurityTypes(this.wireValue);
  @override
  final String wireValue;

  static SecurityTypes fromValue(String value) {
    for (final item in SecurityTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityTypes value: $value');
  }
}
