/// Type of the storage class.
enum SCType {
  native("Native"),
  rWX("RWX"),
  blob("Blob"),
  nFS("NFS"),
  sMB("SMB");

  const SCType(this.value);
  final String value;

  static SCType fromValue(String value) {
    for (final item in SCType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SCType value: $value');
  }
}

