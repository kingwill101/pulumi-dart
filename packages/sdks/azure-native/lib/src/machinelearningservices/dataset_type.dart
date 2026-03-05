/// Specifies dataset type.
enum DatasetType {
  valueTabular("tabular"),
  valueFile("file");

  const DatasetType(this.wireValue);
  final String wireValue;

  static DatasetType fromValue(String value) {
    for (final item in DatasetType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatasetType value: $value');
  }
}

