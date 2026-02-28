/// Required. A status for this trigger.
enum OrganizationJobTriggerStatus {
  statusUnspecified("STATUS_UNSPECIFIED"),
  healthy("HEALTHY"),
  paused("PAUSED"),
  cancelled("CANCELLED");

  const OrganizationJobTriggerStatus(this.value);
  final String value;

  static OrganizationJobTriggerStatus fromValue(String value) {
    for (final item in OrganizationJobTriggerStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OrganizationJobTriggerStatus value: $value');
  }
}

