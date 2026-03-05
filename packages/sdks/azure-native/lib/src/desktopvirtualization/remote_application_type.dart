/// Resource Type of Application.
enum RemoteApplicationType {
  valueInBuilt("InBuilt"),
  valueMsixApplication("MsixApplication");

  const RemoteApplicationType(this.wireValue);
  final String wireValue;

  static RemoteApplicationType fromValue(String value) {
    for (final item in RemoteApplicationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RemoteApplicationType value: $value');
  }
}

