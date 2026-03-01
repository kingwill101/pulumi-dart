/// The format of the report being delivered.
enum FormatType {
  valueCsv("Csv");

  const FormatType(this.value);
  final String value;

  static FormatType fromValue(String value) {
    for (final item in FormatType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FormatType value: $value');
  }
}

