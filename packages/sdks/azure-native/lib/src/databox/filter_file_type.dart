/// Type of the filter file.
enum FilterFileType {
  valueAzureBlob("AzureBlob"),
  valueAzureFile("AzureFile");

  const FilterFileType(this.wireValue);
  final String wireValue;

  static FilterFileType fromValue(String value) {
    for (final item in FilterFileType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FilterFileType value: $value');
  }
}

