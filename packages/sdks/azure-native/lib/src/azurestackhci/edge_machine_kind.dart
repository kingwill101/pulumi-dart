/// Edge Machine type.
enum EdgeMachineKind {
  standard("Standard"),
  dedicated("Dedicated");

  const EdgeMachineKind(this.wireValue);
  final String wireValue;

  static EdgeMachineKind fromValue(String value) {
    for (final item in EdgeMachineKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EdgeMachineKind value: $value');
  }
}

