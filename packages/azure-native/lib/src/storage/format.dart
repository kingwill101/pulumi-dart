/// This is a required field, it specifies the format for the inventory files.
enum Format {
  valueCsv("Csv"),
  valueParquet("Parquet");

  const Format(this.value);
  final String value;

  static Format fromValue(String value) {
    for (final item in Format.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Format value: $value');
  }
}

