/// The type of the device.
enum DeviceType {
  valueUnknown("Unknown"),
  valueAzureStackEdge("AzureStackEdge");

  const DeviceType(this.value);
  final String value;

  static DeviceType fromValue(String value) {
    for (final item in DeviceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeviceType value: $value');
  }
}

