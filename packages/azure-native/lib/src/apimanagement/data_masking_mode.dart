/// Data masking mode.
enum DataMaskingMode {
  valueMask("Mask"),
  valueHide("Hide");

  const DataMaskingMode(this.value);
  final String value;

  static DataMaskingMode fromValue(String value) {
    for (final item in DataMaskingMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataMaskingMode value: $value');
  }
}

