/// Edition of the reservation.
enum ReservationEdition {
  editionUnspecified("EDITION_UNSPECIFIED"),
  standard("STANDARD"),
  enterprise("ENTERPRISE"),
  enterprisePlus("ENTERPRISE_PLUS");

  const ReservationEdition(this.value);
  final String value;

  static ReservationEdition fromValue(String value) {
    for (final item in ReservationEdition.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReservationEdition value: $value');
  }
}
