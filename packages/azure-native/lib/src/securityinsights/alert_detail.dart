/// Alert detail
enum AlertDetail {
  valueDisplayName("DisplayName"),
  valueSeverity("Severity");

  const AlertDetail(this.value);
  final String value;

  static AlertDetail fromValue(String value) {
    for (final item in AlertDetail.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AlertDetail value: $value');
  }
}

