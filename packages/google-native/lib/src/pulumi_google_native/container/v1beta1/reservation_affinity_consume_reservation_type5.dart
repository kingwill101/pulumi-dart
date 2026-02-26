/// Corresponds to the type of reservation consumption.
enum ReservationAffinityConsumeReservationType5 {
  unspecified("UNSPECIFIED"),
  noReservation("NO_RESERVATION"),
  anyReservation("ANY_RESERVATION"),
  specificReservation("SPECIFIC_RESERVATION");

  const ReservationAffinityConsumeReservationType5(this.value);
  final String value;

  static ReservationAffinityConsumeReservationType5 fromValue(String value) {
    for (final item in ReservationAffinityConsumeReservationType5.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ReservationAffinityConsumeReservationType5 value: $value');
  }
}
