/// Optional. Type of reservation to consume
enum ReservationAffinityConsumeReservationType8 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  noReservation("NO_RESERVATION"),
  anyReservation("ANY_RESERVATION"),
  specificReservation("SPECIFIC_RESERVATION");

  const ReservationAffinityConsumeReservationType8(this.value);
  final String value;

  static ReservationAffinityConsumeReservationType8 fromValue(String value) {
    for (final item in ReservationAffinityConsumeReservationType8.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ReservationAffinityConsumeReservationType8 value: $value');
  }
}
