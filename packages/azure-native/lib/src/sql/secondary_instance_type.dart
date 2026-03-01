/// Type of the geo-secondary instance. Set 'Standby' if the instance is used as a DR option only.
enum SecondaryInstanceType {
  valueGeo("Geo"),
  valueStandby("Standby");

  const SecondaryInstanceType(this.value);
  final String value;

  static SecondaryInstanceType fromValue(String value) {
    for (final item in SecondaryInstanceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecondaryInstanceType value: $value');
  }
}

