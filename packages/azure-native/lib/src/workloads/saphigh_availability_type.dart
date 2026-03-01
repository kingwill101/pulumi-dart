/// The high availability type.
enum SAPHighAvailabilityType {
  availabilitySet("AvailabilitySet"),
  availabilityZone("AvailabilityZone");

  const SAPHighAvailabilityType(this.value);
  final String value;

  static SAPHighAvailabilityType fromValue(String value) {
    for (final item in SAPHighAvailabilityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SAPHighAvailabilityType value: $value');
  }
}

