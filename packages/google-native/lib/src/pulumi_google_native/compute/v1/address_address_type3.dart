/// The type of address to reserve, either INTERNAL or EXTERNAL. If unspecified, defaults to EXTERNAL.
enum AddressAddressType3 {
  external("EXTERNAL"),
  internal("INTERNAL"),
  unspecifiedType("UNSPECIFIED_TYPE");

  const AddressAddressType3(this.value);
  final String value;

  static AddressAddressType3 fromValue(String value) {
    for (final item in AddressAddressType3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AddressAddressType3 value: $value');
  }
}
