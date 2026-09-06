import 'package:pulumi/pulumi.dart' as pulumi;

/// The current state of encryption for this Data Lake Store account.
enum EncryptionState implements pulumi.PulumiEnum<String> {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

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
