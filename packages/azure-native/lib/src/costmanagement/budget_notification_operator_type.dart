/// The comparison operator.
///
/// Supported for CategoryType(s): Cost, ReservationUtilization.
///
/// Supported operators for **CategoryType: Cost**
/// - GreaterThan
/// - GreaterThanOrEqualTo
///
/// Supported operators for **CategoryType: ReservationUtilization**
/// - LessThan
enum BudgetNotificationOperatorType {
  equalTo("EqualTo"),
  greaterThan("GreaterThan"),
  greaterThanOrEqualTo("GreaterThanOrEqualTo"),
  lessThan("LessThan");

  const BudgetNotificationOperatorType(this.value);
  final String value;

  static BudgetNotificationOperatorType fromValue(String value) {
    for (final item in BudgetNotificationOperatorType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BudgetNotificationOperatorType value: $value');
  }
}

