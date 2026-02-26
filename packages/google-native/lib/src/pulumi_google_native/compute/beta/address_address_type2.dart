/// The type of address to reserve, either INTERNAL or EXTERNAL. If unspecified, defaults to EXTERNAL.
enum AddressAddressType2 {
  external("EXTERNAL"),
  internal("INTERNAL"),
  unspecifiedType("UNSPECIFIED_TYPE");

  const AddressAddressType2(this.value);
  final String value;

  static AddressAddressType2 fromValue(String value) {
    for (final item in AddressAddressType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AddressAddressType2 value: $value');
  }
}
