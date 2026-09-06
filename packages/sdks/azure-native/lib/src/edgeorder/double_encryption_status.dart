import 'package:pulumi/pulumi.dart' as pulumi;

/// Double encryption status as entered by the customer. It is compulsory to give this parameter if the 'Deny' or 'Disabled' policy is configured.
enum DoubleEncryptionStatus implements pulumi.PulumiEnum<String> {
  disabled("Disabled"),
  enabled("Enabled");

  const DoubleEncryptionStatus(this.wireValue);
  @override
  final String wireValue;

  static DoubleEncryptionStatus fromValue(String value) {
    for (final item in DoubleEncryptionStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DoubleEncryptionStatus value: $value');
  }
}
