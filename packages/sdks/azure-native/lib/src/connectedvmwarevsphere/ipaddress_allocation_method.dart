/// Gets or sets the nic allocation method.
enum IPAddressAllocationMethod {
  valueUnset("unset"),
  valueDynamic("dynamic"),
  valueStatic("static"),
  valueLinklayer("linklayer"),
  valueRandom("random"),
  valueOther("other");

  const IPAddressAllocationMethod(this.value);
  final String value;

  static IPAddressAllocationMethod fromValue(String value) {
    for (final item in IPAddressAllocationMethod.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IPAddressAllocationMethod value: $value');
  }
}

