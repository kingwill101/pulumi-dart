/// Optional. Type of reservation to consume
enum ReservationAffinityConsumeReservationType7 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  noReservation("NO_RESERVATION"),
  anyReservation("ANY_RESERVATION"),
  specificReservation("SPECIFIC_RESERVATION");

  const ReservationAffinityConsumeReservationType7(this.value);
  final String value;

  static ReservationAffinityConsumeReservationType7 fromValue(String value) {
    for (final item in ReservationAffinityConsumeReservationType7.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ReservationAffinityConsumeReservationType7 value: $value');
  }
}
