/// Type of storage target
enum StorageTargetType {
  valueIscsi("Iscsi"),
  valueNone("None");

  const StorageTargetType(this.value);
  final String value;

  static StorageTargetType fromValue(String value) {
    for (final item in StorageTargetType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageTargetType value: $value');
  }
}

