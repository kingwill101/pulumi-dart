enum ChildConfigurationType {
  deviceConfiguration("DeviceConfiguration"),
  additionalConfiguration("AdditionalConfiguration");

  const ChildConfigurationType(this.value);
  final String value;

  static ChildConfigurationType fromValue(String value) {
    for (final item in ChildConfigurationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ChildConfigurationType value: $value');
  }
}

