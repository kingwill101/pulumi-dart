// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'one_time_schedule.dart';
import 'patch_config.dart';
import 'patch_instance_filter.dart';
import 'patch_rollout.dart';
import 'recurring_schedule.dart';

/// The set of arguments for PatchDeployment.
class PatchDeploymentArgs {
  /// Optional. Description of the patch deployment. Length of the description is limited to 1024 characters.
  final pulumi.Input<String>? description;

  /// Optional. Duration of the patch. After the duration ends, the patch times out.
  final pulumi.Input<String>? duration;

  /// VM instances to patch.
  final pulumi.Input<PatchInstanceFilter> instanceFilter;

  /// Unique name for the patch deployment resource in a project. The patch deployment name is in the form: `projects/{project_id}/patchDeployments/{patch_deployment_id}`. This field is ignored when you create a new patch deployment.
  final pulumi.Input<String>? name;

  /// Schedule a one-time execution.
  final pulumi.Input<OneTimeSchedule> oneTimeSchedule;

  /// Optional. Patch configuration that is applied.
  final pulumi.Input<PatchConfig>? patchConfig;

  /// Required. A name for the patch deployment in the project. When creating a name the following rules apply: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the project.
  final pulumi.Input<String> patchDeploymentId;
  final pulumi.Input<String>? project;

  /// Schedule recurring executions.
  final pulumi.Input<RecurringSchedule> recurringSchedule;

  /// Optional. Rollout strategy of the patch job.
  final pulumi.Input<PatchRollout>? rollout;

  PatchDeploymentArgs({
    this.description,
    this.duration,
    required this.instanceFilter,
    this.name,
    required this.oneTimeSchedule,
    this.patchConfig,
    required this.patchDeploymentId,
    this.project,
    required this.recurringSchedule,
    this.rollout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final durationValue = duration;
    if (durationValue != null) {
      map['duration'] = durationValue;
    }
    map['instanceFilter'] =
        pulumi.Input.mapInputValue<PatchInstanceFilter, Map<String, dynamic>>(
            instanceFilter, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['oneTimeSchedule'] =
        pulumi.Input.mapInputValue<OneTimeSchedule, Map<String, dynamic>>(
            oneTimeSchedule, (value) => value.toMap());
    final patchConfigValue = patchConfig;
    if (patchConfigValue != null) {
      map['patchConfig'] =
          pulumi.Input.mapOptionalInputValue<PatchConfig, Map<String, dynamic>>(
              patchConfigValue, (value) => value.toMap());
    }
    map['patchDeploymentId'] = patchDeploymentId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['recurringSchedule'] =
        pulumi.Input.mapInputValue<RecurringSchedule, Map<String, dynamic>>(
            recurringSchedule, (value) => value.toMap());
    final rolloutValue = rollout;
    if (rolloutValue != null) {
      map['rollout'] = pulumi.Input.mapOptionalInputValue<PatchRollout,
          Map<String, dynamic>>(rolloutValue, (value) => value.toMap());
    }
    return map;
  }

  factory PatchDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return PatchDeploymentArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      duration: pulumi.Input.asOptionalInput<String>(map['duration']),
      instanceFilter:
          pulumi.Input.asInput<PatchInstanceFilter>(map['instanceFilter']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      oneTimeSchedule:
          pulumi.Input.asInput<OneTimeSchedule>(map['oneTimeSchedule']),
      patchConfig:
          pulumi.Input.asOptionalInput<PatchConfig>(map['patchConfig']),
      patchDeploymentId: pulumi.Input.asInput<String>(map['patchDeploymentId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      recurringSchedule:
          pulumi.Input.asInput<RecurringSchedule>(map['recurringSchedule']),
      rollout: pulumi.Input.asOptionalInput<PatchRollout>(map['rollout']),
    );
  }
}
