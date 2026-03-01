/// Resource Type of Application.
enum RemoteApplicationType {
  valueInBuilt("InBuilt"),
  valueMsixApplication("MsixApplication");

  const RemoteApplicationType(this.value);
  final String value;

  static RemoteApplicationType fromValue(String value) {
    for (final item in RemoteApplicationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RemoteApplicationType value: $value');
  }
}

