/// How to connect back to the operator network, e.g. MAPS
enum Connectivity {
  publicAddress("PublicAddress");

  const Connectivity(this.value);
  final String value;

  static Connectivity fromValue(String value) {
    for (final item in Connectivity.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Connectivity value: $value');
  }
}

