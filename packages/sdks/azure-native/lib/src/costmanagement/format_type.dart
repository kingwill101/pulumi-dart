/// The format of the report being delivered.
enum FormatType {
  valueCsv("Csv");

  const FormatType(this.wireValue);
  final String wireValue;

  static FormatType fromValue(String value) {
    for (final item in FormatType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FormatType value: $value');
  }
}

