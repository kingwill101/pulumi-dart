/// The desired configuration of Start VM On Connect for the hostpool during the ramp up phase. If this is disabled, session hosts must be turned on using rampUpAutoStartHosts or by turning them on manually.
enum SetStartVMOnConnect {
  valueEnable("Enable"),
  valueDisable("Disable");

  const SetStartVMOnConnect(this.value);
  final String value;

  static SetStartVMOnConnect fromValue(String value) {
    for (final item in SetStartVMOnConnect.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SetStartVMOnConnect value: $value');
  }
}

