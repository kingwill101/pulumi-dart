/// The status of this rollout. Readonly. In case of a failed rollout, the system will automatically rollback to the current Rollout version. Readonly.
enum RolloutStatus {
  rolloutStatusUnspecified("ROLLOUT_STATUS_UNSPECIFIED"),
  inProgress("IN_PROGRESS"),
  success("SUCCESS"),
  cancelled("CANCELLED"),
  failed("FAILED"),
  pending("PENDING"),
  failedRolledBack("FAILED_ROLLED_BACK");

  const RolloutStatus(this.value);
  final String value;

  static RolloutStatus fromValue(String value) {
    for (final item in RolloutStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RolloutStatus value: $value');
  }
}
