// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'one_time_schedule2.dart';
import 'patch_config2.dart';
import 'patch_instance_filter2.dart';
import 'patch_rollout2.dart';
import 'recurring_schedule2.dart';

/// The set of arguments for PatchDeployment.
class PatchDeploymentArgs2 {
  /// Optional. Description of the patch deployment. Length of the description is limited to 1024 characters.
  final Input<String>? description;

  /// Optional. Duration of the patch. After the duration ends, the patch times out.
  final Input<String>? duration;

  /// VM instances to patch.
  final Input<PatchInstanceFilter2> instanceFilter;

  /// Unique name for the patch deployment resource in a project. The patch deployment name is in the form: `projects/{project_id}/patchDeployments/{patch_deployment_id}`. This field is ignored when you create a new patch deployment.
  final Input<String>? name;

  /// Schedule a one-time execution.
  final Input<OneTimeSchedule2> oneTimeSchedule;

  /// Optional. Patch configuration that is applied.
  final Input<PatchConfig2>? patchConfig;

  /// Required. A name for the patch deployment in the project. When creating a name the following rules apply: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the project.
  final Input<String> patchDeploymentId;
  final Input<String>? project;

  /// Schedule recurring executions.
  final Input<RecurringSchedule2> recurringSchedule;

  /// Optional. Rollout strategy of the patch job.
  final Input<PatchRollout2>? rollout;

  PatchDeploymentArgs2({
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
        Input.mapInputValue<PatchInstanceFilter2, Map<String, dynamic>>(
            instanceFilter, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['oneTimeSchedule'] =
        Input.mapInputValue<OneTimeSchedule2, Map<String, dynamic>>(
            oneTimeSchedule, (value) => value.toMap());
    final patchConfigValue = patchConfig;
    if (patchConfigValue != null) {
      map['patchConfig'] =
          Input.mapOptionalInputValue<PatchConfig2, Map<String, dynamic>>(
              patchConfigValue, (value) => value.toMap());
    }
    map['patchDeploymentId'] = patchDeploymentId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['recurringSchedule'] =
        Input.mapInputValue<RecurringSchedule2, Map<String, dynamic>>(
            recurringSchedule, (value) => value.toMap());
    final rolloutValue = rollout;
    if (rolloutValue != null) {
      map['rollout'] =
          Input.mapOptionalInputValue<PatchRollout2, Map<String, dynamic>>(
              rolloutValue, (value) => value.toMap());
    }
    return map;
  }

  factory PatchDeploymentArgs2.fromMap(Map<String, dynamic> map) {
    return PatchDeploymentArgs2(
      description: Input.asOptionalInput<String>(map['description']),
      duration: Input.asOptionalInput<String>(map['duration']),
      instanceFilter:
          Input.asInput<PatchInstanceFilter2>(map['instanceFilter']),
      name: Input.asOptionalInput<String>(map['name']),
      oneTimeSchedule: Input.asInput<OneTimeSchedule2>(map['oneTimeSchedule']),
      patchConfig: Input.asOptionalInput<PatchConfig2>(map['patchConfig']),
      patchDeploymentId: Input.asInput<String>(map['patchDeploymentId']),
      project: Input.asOptionalInput<String>(map['project']),
      recurringSchedule:
          Input.asInput<RecurringSchedule2>(map['recurringSchedule']),
      rollout: Input.asOptionalInput<PatchRollout2>(map['rollout']),
    );
  }
}
