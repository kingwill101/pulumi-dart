// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_config.dart';

/// {@template pulumi_gkebackup_v1_restore_plan_args_doc}
/// The set of arguments for RestorePlan.
/// {@endtemplate}
/// {@macro pulumi_gkebackup_v1_restore_plan_args_doc}
class RestorePlanArgs {
  /// Immutable. A reference to the BackupPlan from which Backups may be used as the source for Restores created via this RestorePlan. Format: `projects/*/locations/*/backupPlans/*`.
  final pulumi.Input<String> backupPlan;

  /// Immutable. The target cluster into which Restores created via this RestorePlan will restore data. NOTE: the cluster's region must be the same as the RestorePlan. Valid formats: - `projects/*/locations/*/clusters/*` - `projects/*/zones/*/clusters/*`
  final pulumi.Input<String> cluster;

  /// Optional. User specified descriptive string for this RestorePlan.
  final pulumi.Input<String>? description;

  /// Optional. A set of custom labels supplied by user.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Configuration of Restores created via this RestorePlan.
  final pulumi.Input<RestoreConfig> restoreConfig;

  /// Required. The client-provided short name for the RestorePlan resource. This name must: - be between 1 and 63 characters long (inclusive) - consist of only lower-case ASCII letters, numbers, and dashes - start with a lower-case letter - end with a lower-case letter or number - be unique within the set of RestorePlans in this location
  final pulumi.Input<String> restorePlanId;

  /// Creates a new [RestorePlanArgs].
  /// [backupPlan] Immutable. A reference to the BackupPlan from which Backups may be used as the source for Restores created via this RestorePlan. Format: `projects/*/locations/*/backupPlans/*`.
  /// [cluster] Immutable. The target cluster into which Restores created via this RestorePlan will restore data. NOTE: the cluster's region must be the same as the RestorePlan. Valid formats: - `projects/*/locations/*/clusters/*` - `projects/*/zones/*/clusters/*`
  /// [description] Optional. User specified descriptive string for this RestorePlan.
  /// [labels] Optional. A set of custom labels supplied by user.
  /// [location] Optional.
  /// [project] Optional.
  /// [restoreConfig] Configuration of Restores created via this RestorePlan.
  /// [restorePlanId] Required. The client-provided short name for the RestorePlan resource. This name must: - be between 1 and 63 characters long (inclusive) - consist of only lower-case ASCII letters, numbers, and dashes - start with a lower-case letter - end with a lower-case letter or number - be unique within the set of RestorePlans in this location
  RestorePlanArgs({
    required String backupPlan,
    required String cluster,
    String? description,
    Map<String, String>? labels,
    String? location,
    String? project,
    required RestoreConfig restoreConfig,
    required String restorePlanId,
  })  : backupPlan = pulumi.Input.asInput<String>(backupPlan),
        cluster = pulumi.Input.asInput<String>(cluster),
        description = pulumi.Input.asOptionalInput<String>(description),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        restoreConfig = pulumi.Input.asInput<RestoreConfig>(restoreConfig),
        restorePlanId = pulumi.Input.asInput<String>(restorePlanId);

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
        pulumi.Input.mapInputValue<RestoreConfig, Map<String, dynamic>>(
            restoreConfig, (value) => value.toMap());
    map['restorePlanId'] = restorePlanId;
    return map;
  }

  factory RestorePlanArgs.fromMap(Map<String, dynamic> map) {
    return RestorePlanArgs(
      backupPlan: map['backupPlan'] as String,
      cluster: map['cluster'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      restoreConfig: RestoreConfig.fromMap(
          (map['restoreConfig'] as Map).cast<String, dynamic>()),
      restorePlanId: map['restorePlanId'] as String,
    );
  }
}
