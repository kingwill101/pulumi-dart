/// notification event.
enum NotificationEvent {
  generateSnapshotSuccess("generate_snapshot_success"),
  generateSnapshotFailed("generate_snapshot_failed"),
  assessmentFailure("assessment_failure"),
  reportConfigurationChanges("report_configuration_changes"),
  reportDeletion("report_deletion");

  const NotificationEvent(this.value);
  final String value;

  static NotificationEvent fromValue(String value) {
    for (final item in NotificationEvent.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotificationEvent value: $value');
  }
}

