/// Address prefix type.
enum AddressPrefixType {
  valueIPPrefix("IPPrefix"),
  valueServiceTag("ServiceTag");

  const AddressPrefixType(this.wireValue);
  final String wireValue;

  static AddressPrefixType fromValue(String value) {
    for (final item in AddressPrefixType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AddressPrefixType value: $value');
  }
}

