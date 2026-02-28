/// The type of address to reserve, either INTERNAL or EXTERNAL. If unspecified, defaults to EXTERNAL.
enum GlobalAddressAddressTypeComputeBeta {
  external("EXTERNAL"),
  internal("INTERNAL"),
  unspecifiedType("UNSPECIFIED_TYPE");

  const GlobalAddressAddressTypeComputeBeta(this.value);
  final String value;

  static GlobalAddressAddressTypeComputeBeta fromValue(String value) {
    for (final item in GlobalAddressAddressTypeComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GlobalAddressAddressTypeComputeBeta value: $value');
  }
}

