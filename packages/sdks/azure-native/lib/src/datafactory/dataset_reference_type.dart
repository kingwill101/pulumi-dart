/// Dataset reference type.
enum DatasetReferenceType {
  datasetReference("DatasetReference");

  const DatasetReferenceType(this.wireValue);
  final String wireValue;

  static DatasetReferenceType fromValue(String value) {
    for (final item in DatasetReferenceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatasetReferenceType value: $value');
  }
}
