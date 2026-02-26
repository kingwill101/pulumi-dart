/// The desired state of etcd encryption.
enum DatabaseEncryptionState2 {
  unknown("UNKNOWN"),
  encrypted("ENCRYPTED"),
  decrypted("DECRYPTED");

  const DatabaseEncryptionState2(this.value);
  final String value;

  static DatabaseEncryptionState2 fromValue(String value) {
    for (final item in DatabaseEncryptionState2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseEncryptionState2 value: $value');
  }
}
