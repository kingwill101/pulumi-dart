/// Address prefix type.
enum AddressPrefixType {
  valueIPPrefix("IPPrefix"),
  valueServiceTag("ServiceTag");

  const AddressPrefixType(this.value);
  final String value;

  static AddressPrefixType fromValue(String value) {
    for (final item in AddressPrefixType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AddressPrefixType value: $value');
  }
}

