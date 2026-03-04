/// Property value
enum EventCode {
  instanceReboot("instance-reboot"),
  instanceRetirement("instance-retirement"),
  instanceStop("instance-stop"),
  systemMaintenance("system-maintenance"),
  systemReboot("system-reboot");

  const EventCode(this.wireValue);
  final String wireValue;

  static EventCode fromValue(String value) {
    for (final item in EventCode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventCode value: $value');
  }
}
