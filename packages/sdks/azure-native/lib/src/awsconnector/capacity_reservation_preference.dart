/// Property value
enum CapacityReservationPreference {
  none("none"),
  open("open");

  const CapacityReservationPreference(this.wireValue);
  final String wireValue;

  static CapacityReservationPreference fromValue(String value) {
    for (final item in CapacityReservationPreference.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CapacityReservationPreference value: $value');
  }
}

