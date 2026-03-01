/// Transfer Storage Blobs or Tables
enum DataType {
  valueBlob("Blob"),
  valueTable("Table");

  const DataType(this.value);
  final String value;

  static DataType fromValue(String value) {
    for (final item in DataType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataType value: $value');
  }
}

