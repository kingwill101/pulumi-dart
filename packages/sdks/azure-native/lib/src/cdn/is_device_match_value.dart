enum IsDeviceMatchValue {
  mobile("Mobile"),
  desktop("Desktop");

  const IsDeviceMatchValue(this.value);
  final String value;

  static IsDeviceMatchValue fromValue(String value) {
    for (final item in IsDeviceMatchValue.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IsDeviceMatchValue value: $value');
  }
}

