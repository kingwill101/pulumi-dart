/// Encryption type of the capacity pool, set encryption type for data at rest for this pool and all volumes in it. This value can only be set when creating new pool.
enum EncryptionType {
  valueSingle("Single"),
  valueDouble("Double");

  const EncryptionType(this.value);
  final String value;

  static EncryptionType fromValue(String value) {
    for (final item in EncryptionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EncryptionType value: $value');
  }
}

