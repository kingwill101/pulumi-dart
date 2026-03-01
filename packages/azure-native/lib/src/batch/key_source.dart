/// Type of the key source.
enum KeySource {
  microsoftBatch("Microsoft.Batch"),
  microsoftKeyVault("Microsoft.KeyVault");

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

