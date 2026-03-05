/// The category of the budget.
/// - 'Cost' defines a Budget.
/// - 'ReservationUtilization' defines a Reservation Utilization Alert Rule.
enum CategoryType {
  cost("Cost"),
  valueReservationUtilization("ReservationUtilization");

  const CategoryType(this.wireValue);
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

