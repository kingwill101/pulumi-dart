/// Device kind to support polymorphic resource.
enum DeviceKind {
  hCI("HCI");

  const DeviceKind(this.wireValue);
  final String wireValue;

  static DeviceKind fromValue(String value) {
    for (final item in DeviceKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeviceKind value: $value');
  }
}

