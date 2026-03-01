/// HostPool type for desktop.
enum HostPoolType {
  valuePersonal("Personal"),
  valuePooled("Pooled"),
  valueBYODesktop("BYODesktop");

  const HostPoolType(this.value);
  final String value;

  static HostPoolType fromValue(String value) {
    for (final item in HostPoolType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HostPoolType value: $value');
  }
}

