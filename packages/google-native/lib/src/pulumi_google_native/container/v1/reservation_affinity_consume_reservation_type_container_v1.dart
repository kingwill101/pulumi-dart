/// Corresponds to the type of reservation consumption.
enum ReservationAffinityConsumeReservationTypeContainerV1 {
  unspecified("UNSPECIFIED"),
  noReservation("NO_RESERVATION"),
  anyReservation("ANY_RESERVATION"),
  specificReservation("SPECIFIC_RESERVATION");

  const ReservationAffinityConsumeReservationTypeContainerV1(this.value);
  final String value;

  static ReservationAffinityConsumeReservationTypeContainerV1 fromValue(
      String value) {
    for (final item
        in ReservationAffinityConsumeReservationTypeContainerV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ReservationAffinityConsumeReservationTypeContainerV1 value: $value');
  }
}
