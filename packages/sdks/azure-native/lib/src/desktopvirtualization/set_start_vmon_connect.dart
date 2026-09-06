import 'package:pulumi/pulumi.dart' as pulumi;

/// The desired configuration of Start VM On Connect for the hostpool during the ramp up phase. If this is disabled, session hosts must be turned on using rampUpAutoStartHosts or by turning them on manually.
enum SetStartVMOnConnect implements pulumi.PulumiEnum<String> {
  valueEnable("Enable"),
  valueDisable("Disable");

  const SetStartVMOnConnect(this.wireValue);
  @override
  final String wireValue;

  static SetStartVMOnConnect fromValue(String value) {
    for (final item in SetStartVMOnConnect.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SetStartVMOnConnect value: $value');
  }
}
