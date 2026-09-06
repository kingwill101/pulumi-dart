import 'package:pulumi/pulumi.dart' as pulumi;

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
enum BudgetNotificationOperatorType implements pulumi.PulumiEnum<String> {
  equalTo("EqualTo"),
  greaterThan("GreaterThan"),
  greaterThanOrEqualTo("GreaterThanOrEqualTo"),
  lessThan("LessThan");

  const BudgetNotificationOperatorType(this.wireValue);
  @override
  final String wireValue;

  static BudgetNotificationOperatorType fromValue(String value) {
    for (final item in BudgetNotificationOperatorType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BudgetNotificationOperatorType value: $value');
  }
}
