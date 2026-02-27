/// Optional. Type of reservation to consume
enum ReservationAffinityConsumeReservationTypeNotebooksV1 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  noReservation("NO_RESERVATION"),
  anyReservation("ANY_RESERVATION"),
  specificReservation("SPECIFIC_RESERVATION");

  const ReservationAffinityConsumeReservationTypeNotebooksV1(this.value);
  final String value;

  static ReservationAffinityConsumeReservationTypeNotebooksV1 fromValue(
      String value) {
    for (final item
        in ReservationAffinityConsumeReservationTypeNotebooksV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ReservationAffinityConsumeReservationTypeNotebooksV1 value: $value');
  }
}
