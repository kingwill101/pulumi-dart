/// Optional. Type of reservation to consume
enum ReservationAffinityConsumeReservationTypeDataprocV1 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  noReservation("NO_RESERVATION"),
  anyReservation("ANY_RESERVATION"),
  specificReservation("SPECIFIC_RESERVATION");

  const ReservationAffinityConsumeReservationTypeDataprocV1(this.value);
  final String value;

  static ReservationAffinityConsumeReservationTypeDataprocV1 fromValue(
      String value) {
    for (final item
        in ReservationAffinityConsumeReservationTypeDataprocV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ReservationAffinityConsumeReservationTypeDataprocV1 value: $value');
  }
}
