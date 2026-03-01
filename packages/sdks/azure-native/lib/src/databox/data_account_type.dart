/// Type of the account of data.
enum DataAccountType {
  valueStorageAccount("StorageAccount"),
  valueManagedDisk("ManagedDisk");

  const DataAccountType(this.value);
  final String value;

  static DataAccountType fromValue(String value) {
    for (final item in DataAccountType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataAccountType value: $value');
  }
}

