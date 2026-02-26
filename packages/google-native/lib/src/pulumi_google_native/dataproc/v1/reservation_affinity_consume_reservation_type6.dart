/// Optional. Type of reservation to consume
enum ReservationAffinityConsumeReservationType6 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  noReservation("NO_RESERVATION"),
  anyReservation("ANY_RESERVATION"),
  specificReservation("SPECIFIC_RESERVATION");

  const ReservationAffinityConsumeReservationType6(this.value);
  final String value;

  static ReservationAffinityConsumeReservationType6 fromValue(String value) {
    for (final item in ReservationAffinityConsumeReservationType6.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ReservationAffinityConsumeReservationType6 value: $value');
  }
}
