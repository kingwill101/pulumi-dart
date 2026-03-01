/// Device kind to support polymorphic resource.
enum DeviceKind {
  hCI("HCI");

  const DeviceKind(this.value);
  final String value;

  static DeviceKind fromValue(String value) {
    for (final item in DeviceKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeviceKind value: $value');
  }
}

