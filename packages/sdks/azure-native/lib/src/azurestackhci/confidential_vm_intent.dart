import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the customer's intent for updating confidential VM properties
enum ConfidentialVmIntent implements pulumi.PulumiEnum<String> {
  enable("Enable"),
  disable("Disable");

  const ConfidentialVmIntent(this.wireValue);
  @override
  final String wireValue;

  static ConfidentialVmIntent fromValue(String value) {
    for (final item in ConfidentialVmIntent.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConfidentialVmIntent value: $value');
  }
}
