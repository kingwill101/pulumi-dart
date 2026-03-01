/// Type of the filter file.
enum FilterFileType {
  valueAzureBlob("AzureBlob"),
  valueAzureFile("AzureFile");

  const FilterFileType(this.value);
  final String value;

  static FilterFileType fromValue(String value) {
    for (final item in FilterFileType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FilterFileType value: $value');
  }
}

