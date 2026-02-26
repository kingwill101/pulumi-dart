/// The type of address to reserve, either INTERNAL or EXTERNAL. If unspecified, defaults to EXTERNAL.
enum GlobalAddressAddressType3 {
  external("EXTERNAL"),
  internal("INTERNAL"),
  unspecifiedType("UNSPECIFIED_TYPE");

  const GlobalAddressAddressType3(this.value);
  final String value;

  static GlobalAddressAddressType3 fromValue(String value) {
    for (final item in GlobalAddressAddressType3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalAddressAddressType3 value: $value');
  }
}
