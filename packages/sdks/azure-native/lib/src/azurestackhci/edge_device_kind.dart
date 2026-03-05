/// Edge Solution type to support polymorphic resource.
enum EdgeDeviceKind {
  hCI("HCI");

  const EdgeDeviceKind(this.wireValue);
  final String wireValue;

  static EdgeDeviceKind fromValue(String value) {
    for (final item in EdgeDeviceKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EdgeDeviceKind value: $value');
  }
}

