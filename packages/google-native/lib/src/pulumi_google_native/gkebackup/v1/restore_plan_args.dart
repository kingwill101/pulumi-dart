// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'restore_config.dart';

/// The set of arguments for RestorePlan.
class RestorePlanArgs {
  /// Immutable. A reference to the BackupPlan from which Backups may be used as the source for Restores created via this RestorePlan. Format: `projects/*/locations/*/backupPlans/*`.
  final Input<String> backupPlan;

  /// Immutable. The target cluster into which Restores created via this RestorePlan will restore data. NOTE: the cluster's region must be the same as the RestorePlan. Valid formats: - `projects/*/locations/*/clusters/*` - `projects/*/zones/*/clusters/*`
  final Input<String> cluster;

  /// Optional. User specified descriptive string for this RestorePlan.
  final Input<String>? description;

  /// Optional. A set of custom labels supplied by user.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;
  final Input<String>? project;

  /// Configuration of Restores created via this RestorePlan.
  final Input<RestoreConfig> restoreConfig;

  /// Required. The client-provided short name for the RestorePlan resource. This name must: - be between 1 and 63 characters long (inclusive) - consist of only lower-case ASCII letters, numbers, and dashes - start with a lower-case letter - end with a lower-case letter or number - be unique within the set of RestorePlans in this location
  final Input<String> restorePlanId;

  RestorePlanArgs({
    required this.backupPlan,
    required this.cluster,
    this.description,
    this.labels,
    this.location,
    this.project,
    required this.restoreConfig,
    required this.restorePlanId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupPlan'] = backupPlan;
    map['cluster'] = cluster;
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
    map['restoreConfig'] =
        Input.mapInputValue<RestoreConfig, Map<String, dynamic>>(
            restoreConfig, (value) => value.toMap());
    map['restorePlanId'] = restorePlanId;
    return map;
  }

  factory RestorePlanArgs.fromMap(Map<String, dynamic> map) {
    return RestorePlanArgs(
      backupPlan: Input.asInput<String>(map['backupPlan']),
      cluster: Input.asInput<String>(map['cluster']),
      description: Input.asOptionalInput<String>(map['description']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      restoreConfig: Input.asInput<RestoreConfig>(map['restoreConfig']),
      restorePlanId: Input.asInput<String>(map['restorePlanId']),
    );
  }
}
