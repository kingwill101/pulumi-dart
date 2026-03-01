/// Resource Type of ApplicationGroup.
enum ApplicationGroupType {
  valueRemoteApp("RemoteApp"),
  valueDesktop("Desktop");

  const ApplicationGroupType(this.value);
  final String value;

  static ApplicationGroupType fromValue(String value) {
    for (final item in ApplicationGroupType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApplicationGroupType value: $value');
  }
}

