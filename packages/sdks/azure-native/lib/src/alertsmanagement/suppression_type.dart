/// Specifies when the suppression should be applied
enum SuppressionType {
  valueAlways("Always"),
  valueOnce("Once"),
  valueDaily("Daily"),
  valueWeekly("Weekly"),
  valueMonthly("Monthly");

  const SuppressionType(this.wireValue);
  final String wireValue;

  static SuppressionType fromValue(String value) {
    for (final item in SuppressionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SuppressionType value: $value');
  }
}
