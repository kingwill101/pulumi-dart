/// Type of address.
enum AddressType {
  none("None"),
  residential("Residential"),
  commercial("Commercial");

  const AddressType(this.value);
  final String value;

  static AddressType fromValue(String value) {
    for (final item in AddressType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AddressType value: $value');
  }
}

