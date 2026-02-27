// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../restore_plan_restore_config/restore_plan_restore_config.dart';

/// The set of arguments for RestorePlan.
class RestorePlanArgs {
  /// A reference to the BackupPlan from which Backups may be used
  /// as the source for Restores created via this RestorePlan.
  final pulumi.Input<String> backupPlan;

  /// The source cluster from which Restores will be created via this RestorePlan.
  final pulumi.Input<String> cluster;

  /// User specified descriptive string for this RestorePlan.
  final pulumi.Input<String>? description;

  /// Description: A set of custom labels supplied by the user.
  /// A list of key->value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The region of the Restore Plan.
  final pulumi.Input<String> location;

  /// The full name of the BackupPlan Resource.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Defines the configuration of Restores created via this RestorePlan.
  /// Structure is documented below.
  final pulumi.Input<RestorePlanRestoreConfig> restoreConfig;

  RestorePlanArgs({
    required this.backupPlan,
    required this.cluster,
    this.description,
    this.labels,
    required this.location,
    this.name,
    this.project,
    required this.restoreConfig,
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
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['restoreConfig'] = pulumi.Input.mapInputValue<RestorePlanRestoreConfig,
        Map<String, dynamic>>(restoreConfig, (value) => value.toMap());
    return map;
  }

  factory RestorePlanArgs.fromMap(Map<String, dynamic> map) {
    return RestorePlanArgs(
      backupPlan: pulumi.Input.asInput<String>(map['backupPlan']),
      cluster: pulumi.Input.asInput<String>(map['cluster']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      restoreConfig:
          pulumi.Input.asInput<RestorePlanRestoreConfig>(map['restoreConfig']),
    );
  }
}
