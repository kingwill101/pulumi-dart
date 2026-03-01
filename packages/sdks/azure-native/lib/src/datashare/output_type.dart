/// File output type
enum OutputType {
  valueCsv("Csv"),
  valueParquet("Parquet");

  const OutputType(this.value);
  final String value;

  static OutputType fromValue(String value) {
    for (final item in OutputType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OutputType value: $value');
  }
}

