// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'one_time_schedule.dart';
import 'patch_config.dart';
import 'patch_instance_filter.dart';
import 'patch_rollout.dart';
import 'recurring_schedule.dart';

/// The set of arguments for PatchDeployment.
class PatchDeploymentArgs {
  /// Optional. Description of the patch deployment. Length of the description is limited to 1024 characters.
  final Input<String>? description;

  /// Optional. Duration of the patch. After the duration ends, the patch times out.
  final Input<String>? duration;

  /// VM instances to patch.
  final Input<PatchInstanceFilter> instanceFilter;

  /// Unique name for the patch deployment resource in a project. The patch deployment name is in the form: `projects/{project_id}/patchDeployments/{patch_deployment_id}`. This field is ignored when you create a new patch deployment.
  final Input<String>? name;

  /// Schedule a one-time execution.
  final Input<OneTimeSchedule> oneTimeSchedule;

  /// Optional. Patch configuration that is applied.
  final Input<PatchConfig>? patchConfig;

  /// Required. A name for the patch deployment in the project. When creating a name the following rules apply: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the project.
  final Input<String> patchDeploymentId;
  final Input<String>? project;

  /// Schedule recurring executions.
  final Input<RecurringSchedule> recurringSchedule;

  /// Optional. Rollout strategy of the patch job.
  final Input<PatchRollout>? rollout;

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
        Input.mapInputValue<PatchInstanceFilter, Map<String, dynamic>>(
            instanceFilter, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['oneTimeSchedule'] =
        Input.mapInputValue<OneTimeSchedule, Map<String, dynamic>>(
            oneTimeSchedule, (value) => value.toMap());
    final patchConfigValue = patchConfig;
    if (patchConfigValue != null) {
      map['patchConfig'] =
          Input.mapOptionalInputValue<PatchConfig, Map<String, dynamic>>(
              patchConfigValue, (value) => value.toMap());
    }
    map['patchDeploymentId'] = patchDeploymentId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['recurringSchedule'] =
        Input.mapInputValue<RecurringSchedule, Map<String, dynamic>>(
            recurringSchedule, (value) => value.toMap());
    final rolloutValue = rollout;
    if (rolloutValue != null) {
      map['rollout'] =
          Input.mapOptionalInputValue<PatchRollout, Map<String, dynamic>>(
              rolloutValue, (value) => value.toMap());
    }
    return map;
  }

  factory PatchDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return PatchDeploymentArgs(
      description: Input.asOptionalInput<String>(map['description']),
      duration: Input.asOptionalInput<String>(map['duration']),
      instanceFilter: Input.asInput<PatchInstanceFilter>(map['instanceFilter']),
      name: Input.asOptionalInput<String>(map['name']),
      oneTimeSchedule: Input.asInput<OneTimeSchedule>(map['oneTimeSchedule']),
      patchConfig: Input.asOptionalInput<PatchConfig>(map['patchConfig']),
      patchDeploymentId: Input.asInput<String>(map['patchDeploymentId']),
      project: Input.asOptionalInput<String>(map['project']),
      recurringSchedule:
          Input.asInput<RecurringSchedule>(map['recurringSchedule']),
      rollout: Input.asOptionalInput<PatchRollout>(map['rollout']),
    );
  }
}
