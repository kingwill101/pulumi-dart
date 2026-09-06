import 'package:pulumi/pulumi.dart' as pulumi;

/// The encryptionScope state.
enum EncryptionScopeState implements pulumi.PulumiEnum<String> {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const EncryptionScopeState(this.wireValue);
  @override
  final String wireValue;

  static EncryptionScopeState fromValue(String value) {
    for (final item in EncryptionScopeState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncryptionScopeState value: $value');
  }
}
