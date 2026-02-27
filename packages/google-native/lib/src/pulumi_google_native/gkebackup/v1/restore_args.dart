// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Restore.
class RestoreArgs {
  /// Immutable. A reference to the Backup used as the source from which this Restore will restore. Note that this Backup must be a sub-resource of the RestorePlan's backup_plan. Format: `projects/*/locations/*/backupPlans/*/backups/*`.
  final pulumi.Input<String> backup;

  /// User specified descriptive string for this Restore.
  final pulumi.Input<String>? description;

  /// A set of custom labels supplied by user.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Required. The client-provided short name for the Restore resource. This name must: - be between 1 and 63 characters long (inclusive) - consist of only lower-case ASCII letters, numbers, and dashes - start with a lower-case letter - end with a lower-case letter or number - be unique within the set of Restores in this RestorePlan.
  final pulumi.Input<String> restoreId;
  final pulumi.Input<String> restorePlanId;

  RestoreArgs({
    required this.backup,
    this.description,
    this.labels,
    this.location,
    this.project,
    required this.restoreId,
    required this.restorePlanId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backup'] = backup;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['restoreId'] = restoreId;
    map['restorePlanId'] = restorePlanId;
    return map;
  }

  factory RestoreArgs.fromMap(Map<String, dynamic> map) {
    return RestoreArgs(
      backup: pulumi.Input.asInput<String>(map['backup']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      restoreId: pulumi.Input.asInput<String>(map['restoreId']),
      restorePlanId: pulumi.Input.asInput<String>(map['restorePlanId']),
    );
  }
}
