enum ChildConfigurationType {
  deviceConfiguration("DeviceConfiguration"),
  additionalConfiguration("AdditionalConfiguration");

  const ChildConfigurationType(this.wireValue);
  final String wireValue;

  static ChildConfigurationType fromValue(String value) {
    for (final item in ChildConfigurationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ChildConfigurationType value: $value');
  }
}
