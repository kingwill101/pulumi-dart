/// Property value
enum CapacityReservationPreference {
  none("none"),
  open("open");

  const CapacityReservationPreference(this.value);
  final String value;

  static CapacityReservationPreference fromValue(String value) {
    for (final item in CapacityReservationPreference.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CapacityReservationPreference value: $value');
  }
}

