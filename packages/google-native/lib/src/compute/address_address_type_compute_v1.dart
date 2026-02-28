/// The type of address to reserve, either INTERNAL or EXTERNAL. If unspecified, defaults to EXTERNAL.
enum AddressAddressTypeComputeV1 {
  external("EXTERNAL"),
  internal("INTERNAL"),
  unspecifiedType("UNSPECIFIED_TYPE");

  const AddressAddressTypeComputeV1(this.value);
  final String value;

  static AddressAddressTypeComputeV1 fromValue(String value) {
    for (final item in AddressAddressTypeComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AddressAddressTypeComputeV1 value: $value');
  }
}
