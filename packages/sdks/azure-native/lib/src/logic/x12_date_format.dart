/// The group header date format.
enum X12DateFormat {
  valueNotSpecified("NotSpecified"),
  valueCCYYMMDD("CCYYMMDD"),
  valueYYMMDD("YYMMDD");

  const X12DateFormat(this.value);
  final String value;

  static X12DateFormat fromValue(String value) {
    for (final item in X12DateFormat.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown X12DateFormat value: $value');
  }
}

