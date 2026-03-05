/// Data masking mode.
enum DataMaskingMode {
  valueMask("Mask"),
  valueHide("Hide");

  const DataMaskingMode(this.wireValue);
  final String wireValue;

  static DataMaskingMode fromValue(String value) {
    for (final item in DataMaskingMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataMaskingMode value: $value');
  }
}

