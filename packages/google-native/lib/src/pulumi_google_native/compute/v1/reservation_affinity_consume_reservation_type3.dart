/// Specifies the type of reservation from which this instance can consume resources: ANY_RESERVATION (default), SPECIFIC_RESERVATION, or NO_RESERVATION. See Consuming reserved instances for examples.
enum ReservationAffinityConsumeReservationType3 {
  anyReservation("ANY_RESERVATION"),
  noReservation("NO_RESERVATION"),
  specificReservation("SPECIFIC_RESERVATION"),
  unspecified("UNSPECIFIED");

  const ReservationAffinityConsumeReservationType3(this.value);
  final String value;

  static ReservationAffinityConsumeReservationType3 fromValue(String value) {
    for (final item in ReservationAffinityConsumeReservationType3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ReservationAffinityConsumeReservationType3 value: $value');
  }
}
