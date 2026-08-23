/// Type of address.
enum AddressType {
  valueNone("None"),
  valueResidential("Residential"),
  valueCommercial("Commercial");

  const AddressType(this.wireValue);
  final String wireValue;

  static AddressType fromValue(String value) {
    for (final item in AddressType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AddressType value: $value');
  }
}
