/// notification event.
enum NotificationEvent {
  generateSnapshotSuccess("generate_snapshot_success"),
  generateSnapshotFailed("generate_snapshot_failed"),
  assessmentFailure("assessment_failure"),
  reportConfigurationChanges("report_configuration_changes"),
  reportDeletion("report_deletion");

  const NotificationEvent(this.wireValue);
  final String wireValue;

  static NotificationEvent fromValue(String value) {
    for (final item in NotificationEvent.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotificationEvent value: $value');
  }
}

