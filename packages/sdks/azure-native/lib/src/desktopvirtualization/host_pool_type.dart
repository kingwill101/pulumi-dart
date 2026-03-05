/// HostPool type for desktop.
enum HostPoolType {
  valuePersonal("Personal"),
  valuePooled("Pooled"),
  valueBYODesktop("BYODesktop");

  const HostPoolType(this.wireValue);
  final String wireValue;

  static HostPoolType fromValue(String value) {
    for (final item in HostPoolType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HostPoolType value: $value');
  }
}

