/// Information about the connected appliance.
enum Provider {
  vMWare("VMWare"),
  hCI("HCI"),
  sCVMM("SCVMM");

  const Provider(this.value);
  final String value;

  static Provider fromValue(String value) {
    for (final item in Provider.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Provider value: $value');
  }
}

