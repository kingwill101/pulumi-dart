/// Type of storage target
enum StorageTargetType {
  valueIscsi("Iscsi"),
  valueNone("None");

  const StorageTargetType(this.wireValue);
  final String wireValue;

  static StorageTargetType fromValue(String value) {
    for (final item in StorageTargetType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageTargetType value: $value');
  }
}
