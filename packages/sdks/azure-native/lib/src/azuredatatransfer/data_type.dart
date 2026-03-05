/// Transfer Storage Blobs or Tables
enum DataType {
  valueBlob("Blob"),
  valueTable("Table");

  const DataType(this.wireValue);
  final String wireValue;

  static DataType fromValue(String value) {
    for (final item in DataType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataType value: $value');
  }
}

