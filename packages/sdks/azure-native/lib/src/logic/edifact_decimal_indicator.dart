/// The EDIFACT frame setting decimal indicator.
enum EdifactDecimalIndicator {
  valueNotSpecified("NotSpecified"),
  valueComma("Comma"),
  valueDecimal("Decimal");

  const EdifactDecimalIndicator(this.value);
  final String value;

  static EdifactDecimalIndicator fromValue(String value) {
    for (final item in EdifactDecimalIndicator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EdifactDecimalIndicator value: $value');
  }
}

