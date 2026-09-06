import 'package:pulumi/pulumi.dart' as pulumi;

/// notification event.
enum NotificationEvent implements pulumi.PulumiEnum<String> {
  generateSnapshotSuccess("generate_snapshot_success"),
  generateSnapshotFailed("generate_snapshot_failed"),
  assessmentFailure("assessment_failure"),
  reportConfigurationChanges("report_configuration_changes"),
  reportDeletion("report_deletion");

  const NotificationEvent(this.wireValue);
  @override
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
