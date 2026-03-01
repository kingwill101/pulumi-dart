/// Edge Solution type to support polymorphic resource.
enum EdgeDeviceKind {
  hCI("HCI");

  const EdgeDeviceKind(this.value);
  final String value;

  static EdgeDeviceKind fromValue(String value) {
    for (final item in EdgeDeviceKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EdgeDeviceKind value: $value');
  }
}

