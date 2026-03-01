/// Status of customer managed encryption key
enum EncryptionState {
  enabled("Enabled"),
  disabled("Disabled");

  const EncryptionState(this.value);
  final String value;

  static EncryptionState fromValue(String value) {
    for (final item in EncryptionState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncryptionState value: $value');
  }
}

