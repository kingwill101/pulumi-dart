/// Type of the Storage Target.
enum StorageTargetType {
  valueNfs3("nfs3"),
  valueClfs("clfs"),
  valueUnknown("unknown"),
  valueBlobNfs("blobNfs");

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

