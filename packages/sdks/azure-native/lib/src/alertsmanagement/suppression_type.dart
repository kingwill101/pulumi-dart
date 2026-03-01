/// Specifies when the suppression should be applied
enum SuppressionType {
  valueAlways("Always"),
  valueOnce("Once"),
  valueDaily("Daily"),
  valueWeekly("Weekly"),
  valueMonthly("Monthly");

  const SuppressionType(this.value);
  final String value;

  static SuppressionType fromValue(String value) {
    for (final item in SuppressionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SuppressionType value: $value');
  }
}

