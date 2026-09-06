import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates whether or not the encryption is enabled for container registry.
enum EncryptionStatus implements pulumi.PulumiEnum<String> {
  valueEnabled("enabled"),
  valueDisabled("disabled");

  const EncryptionStatus(this.wireValue);
  @override
  final String wireValue;

  static EncryptionStatus fromValue(String value) {
    for (final item in EncryptionStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncryptionStatus value: $value');
  }
}
