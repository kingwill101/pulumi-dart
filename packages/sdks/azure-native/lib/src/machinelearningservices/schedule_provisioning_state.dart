/// The current deployment state of schedule.
enum ScheduleProvisioningState {
  valueCompleted("Completed"),
  valueProvisioning("Provisioning"),
  valueFailed("Failed");

  const ScheduleProvisioningState(this.wireValue);
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

