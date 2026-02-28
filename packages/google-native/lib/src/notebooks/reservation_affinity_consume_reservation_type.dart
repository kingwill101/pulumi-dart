/// Optional. Type of reservation to consume
enum ReservationAffinityConsumeReservationType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  noReservation("NO_RESERVATION"),
  anyReservation("ANY_RESERVATION"),
  specificReservation("SPECIFIC_RESERVATION");

  const ReservationAffinityConsumeReservationType(this.value);
  final String value;

  static ReservationAffinityConsumeReservationType fromValue(String value) {
    for (final item in ReservationAffinityConsumeReservationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ReservationAffinityConsumeReservationType value: $value');
  }
}
