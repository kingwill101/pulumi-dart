/// The current deployment state of schedule.
enum ScheduleProvisioningState {
  valueCompleted("Completed"),
  valueProvisioning("Provisioning"),
  valueFailed("Failed");

  const ScheduleProvisioningState(this.value);
  final String value;

  static ScheduleProvisioningState fromValue(String value) {
    for (final item in ScheduleProvisioningState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScheduleProvisioningState value: $value');
  }
}

