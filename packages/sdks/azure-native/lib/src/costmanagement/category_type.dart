/// The category of the budget.
/// - 'Cost' defines a Budget.
/// - 'ReservationUtilization' defines a Reservation Utilization Alert Rule.
enum CategoryType {
  cost("Cost"),
  valueReservationUtilization("ReservationUtilization");

  const CategoryType(this.value);
  final String value;

  static CategoryType fromValue(String value) {
    for (final item in CategoryType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CategoryType value: $value');
  }
}

