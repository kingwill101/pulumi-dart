/// Type of the account of data.
enum DataAccountType {
  valueStorageAccount("StorageAccount"),
  valueManagedDisk("ManagedDisk");

  const DataAccountType(this.wireValue);
  final String wireValue;

  static DataAccountType fromValue(String value) {
    for (final item in DataAccountType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataAccountType value: $value');
  }
}

