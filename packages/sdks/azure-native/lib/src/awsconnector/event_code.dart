/// Property value
enum EventCode {
  instanceReboot("instance-reboot"),
  instanceRetirement("instance-retirement"),
  instanceStop("instance-stop"),
  systemMaintenance("system-maintenance"),
  systemReboot("system-reboot");

  const EventCode(this.value);
  final String value;

  static EventCode fromValue(String value) {
    for (final item in EventCode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventCode value: $value');
  }
}

