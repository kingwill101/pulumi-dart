/// Corresponds to the type of reservation consumption.
enum ReservationAffinityConsumeReservationType4 {
  unspecified("UNSPECIFIED"),
  noReservation("NO_RESERVATION"),
  anyReservation("ANY_RESERVATION"),
  specificReservation("SPECIFIC_RESERVATION");

  const ReservationAffinityConsumeReservationType4(this.value);
  final String value;

  static ReservationAffinityConsumeReservationType4 fromValue(String value) {
    for (final item in ReservationAffinityConsumeReservationType4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ReservationAffinityConsumeReservationType4 value: $value');
  }
}
