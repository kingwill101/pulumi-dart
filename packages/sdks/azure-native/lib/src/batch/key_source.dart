/// Type of the key source.
enum KeySource {
  microsoftBatch("Microsoft.Batch"),
  microsoftKeyVault("Microsoft.KeyVault");

  const KeySource(this.wireValue);
  final String wireValue;

  static KeySource fromValue(String value) {
    for (final item in KeySource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KeySource value: $value');
  }
}
