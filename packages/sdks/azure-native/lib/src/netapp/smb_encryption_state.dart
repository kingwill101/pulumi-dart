import 'package:pulumi/pulumi.dart' as pulumi;

/// Enables encryption for in-flight smb3 data. Only applicable for SMB/DualProtocol cache.
enum SmbEncryptionState implements pulumi.PulumiEnum<String> {
  disabled("Disabled"),
  enabled("Enabled");

  const SmbEncryptionState(this.wireValue);
  @override
  final String wireValue;

  static SmbEncryptionState fromValue(String value) {
    for (final item in SmbEncryptionState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SmbEncryptionState value: $value');
  }
}
