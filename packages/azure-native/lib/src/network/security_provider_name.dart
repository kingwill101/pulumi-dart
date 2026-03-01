/// The security provider name.
enum SecurityProviderName {
  valueZScaler("ZScaler"),
  valueIBoss("IBoss"),
  valueCheckpoint("Checkpoint");

  const SecurityProviderName(this.value);
  final String value;

  static SecurityProviderName fromValue(String value) {
    for (final item in SecurityProviderName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityProviderName value: $value');
  }
}

