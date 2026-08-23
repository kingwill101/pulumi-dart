/// Gets or sets the nic allocation method.
enum IPAddressAllocationMethod {
  valueUnset("unset"),
  valueDynamic("dynamic"),
  valueStatic("static"),
  valueLinklayer("linklayer"),
  valueRandom("random"),
  valueOther("other");

  const IPAddressAllocationMethod(this.wireValue);
  final String wireValue;

  static IPAddressAllocationMethod fromValue(String value) {
    for (final item in IPAddressAllocationMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IPAddressAllocationMethod value: $value');
  }
}
