/// Enumerates the possible value of keySource for Encryption
enum KeySource {
  valueMicrosoftCognitiveServices("Microsoft.CognitiveServices"),
  valueMicrosoftKeyVault("Microsoft.KeyVault");

  const KeySource(this.value);
  final String value;

  static KeySource fromValue(String value) {
    for (final item in KeySource.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KeySource value: $value');
  }
}

