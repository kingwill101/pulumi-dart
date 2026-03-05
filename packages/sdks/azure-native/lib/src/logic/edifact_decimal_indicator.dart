/// The EDIFACT frame setting decimal indicator.
enum EdifactDecimalIndicator {
  valueNotSpecified("NotSpecified"),
  valueComma("Comma"),
  valueDecimal("Decimal");

  const EdifactDecimalIndicator(this.wireValue);
  final String wireValue;

  static EdifactDecimalIndicator fromValue(String value) {
    for (final item in EdifactDecimalIndicator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EdifactDecimalIndicator value: $value');
  }
}

