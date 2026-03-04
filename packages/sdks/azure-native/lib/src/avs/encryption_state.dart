/// Status of customer managed encryption key
enum EncryptionState {
  enabled("Enabled"),
  disabled("Disabled");

  const EncryptionState(this.wireValue);
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
