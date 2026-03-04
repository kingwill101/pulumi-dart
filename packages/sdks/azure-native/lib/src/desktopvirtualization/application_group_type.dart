/// Resource Type of ApplicationGroup.
enum ApplicationGroupType {
  valueRemoteApp("RemoteApp"),
  valueDesktop("Desktop");

  const ApplicationGroupType(this.wireValue);
  final String wireValue;

  static ApplicationGroupType fromValue(String value) {
    for (final item in ApplicationGroupType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationGroupType value: $value');
  }
}
