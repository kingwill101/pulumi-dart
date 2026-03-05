/// File output type
enum OutputType {
  valueCsv("Csv"),
  valueParquet("Parquet");

  const OutputType(this.wireValue);
  final String wireValue;

  static OutputType fromValue(String value) {
    for (final item in OutputType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OutputType value: $value');
  }
}

