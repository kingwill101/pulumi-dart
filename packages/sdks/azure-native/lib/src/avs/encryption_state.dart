import 'package:pulumi/pulumi.dart' as pulumi;

/// Status of customer managed encryption key
enum EncryptionState implements pulumi.PulumiEnum<String> {
  enabled("Enabled"),
  disabled("Disabled");

  const EncryptionState(this.wireValue);
  @override
  final String wireValue;

  static EncryptionState fromValue(String value) {
    for (final item in EncryptionState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncryptionState value: $value');
  }
}
