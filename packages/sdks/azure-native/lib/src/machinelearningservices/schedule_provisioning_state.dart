import 'package:pulumi/pulumi.dart' as pulumi;

/// The current deployment state of schedule.
enum ScheduleProvisioningState implements pulumi.PulumiEnum<String> {
  completed("Completed"),
  provisioning("Provisioning"),
  failed("Failed");

  const ScheduleProvisioningState(this.wireValue);
  @override
  final String wireValue;

  static ScheduleProvisioningState fromValue(String value) {
    for (final item in ScheduleProvisioningState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScheduleProvisioningState value: $value');
  }
}
