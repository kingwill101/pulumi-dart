/// The type of address to reserve, either INTERNAL or EXTERNAL. If unspecified, defaults to EXTERNAL.
enum GlobalAddressAddressType2 {
  external("EXTERNAL"),
  internal("INTERNAL"),
  unspecifiedType("UNSPECIFIED_TYPE");

  const GlobalAddressAddressType2(this.value);
  final String value;

  static GlobalAddressAddressType2 fromValue(String value) {
    for (final item in GlobalAddressAddressType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalAddressAddressType2 value: $value');
  }
}
