import 'package:pulumi/pulumi.dart' as pulumi;

/// The category of the budget.
/// - 'Cost' defines a Budget.
/// - 'ReservationUtilization' defines a Reservation Utilization Alert Rule.
enum CategoryType implements pulumi.PulumiEnum<String> {
  cost("Cost"),
  valueReservationUtilization("ReservationUtilization");

  const CategoryType(this.wireValue);
  @override
  final String wireValue;

  static CategoryType fromValue(String value) {
    for (final item in CategoryType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CategoryType value: $value');
  }
}
