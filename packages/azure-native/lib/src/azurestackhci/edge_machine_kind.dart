/// Edge Machine type.
enum EdgeMachineKind {
  standard("Standard"),
  dedicated("Dedicated");

  const EdgeMachineKind(this.value);
  final String value;

  static EdgeMachineKind fromValue(String value) {
    for (final item in EdgeMachineKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EdgeMachineKind value: $value');
  }
}

