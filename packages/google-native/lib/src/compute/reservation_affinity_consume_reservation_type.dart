/// Specifies the type of reservation from which this instance can consume resources: ANY_RESERVATION (default), SPECIFIC_RESERVATION, or NO_RESERVATION. See Consuming reserved instances for examples.
enum ReservationAffinityConsumeReservationType {
  anyReservation("ANY_RESERVATION"),
  noReservation("NO_RESERVATION"),
  specificReservation("SPECIFIC_RESERVATION"),
  specificThenAnyReservation("SPECIFIC_THEN_ANY_RESERVATION"),
  specificThenNoReservation("SPECIFIC_THEN_NO_RESERVATION"),
  unspecified("UNSPECIFIED");

  const ReservationAffinityConsumeReservationType(this.value);
  final String value;

  static ReservationAffinityConsumeReservationType fromValue(String value) {
    for (final item in ReservationAffinityConsumeReservationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReservationAffinityConsumeReservationType value: $value');
  }
}

