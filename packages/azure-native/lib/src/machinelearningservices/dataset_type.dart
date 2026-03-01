/// Specifies dataset type.
enum DatasetType {
  valueTabular("tabular"),
  valueFile("file");

  const DatasetType(this.value);
  final String value;

  static DatasetType fromValue(String value) {
    for (final item in DatasetType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatasetType value: $value');
  }
}

