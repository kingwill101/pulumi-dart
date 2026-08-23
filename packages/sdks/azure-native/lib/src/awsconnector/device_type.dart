/// Property value
enum DeviceType {
  ebs("ebs"),
  instanceStore("instance-store");

  const DeviceType(this.wireValue);
  final String wireValue;

  static DeviceType fromValue(String value) {
    for (final item in DeviceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeviceType value: $value');
  }
}
