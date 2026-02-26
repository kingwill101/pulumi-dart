// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../patch_deployment_instance_filter/patch_deployment_instance_filter.dart';
import '../patch_deployment_one_time_schedule/patch_deployment_one_time_schedule.dart';
import '../patch_deployment_patch_config/patch_deployment_patch_config.dart';
import '../patch_deployment_recurring_schedule/patch_deployment_recurring_schedule.dart';
import '../patch_deployment_rollout/patch_deployment_rollout.dart';

/// The set of arguments for PatchDeployment.
class PatchDeploymentArgs {
  /// Description of the patch deployment. Length of the description is limited to 1024 characters.
  final Input<String>? description;

  /// Duration of the patch. After the duration ends, the patch times out.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s"
  final Input<String>? duration;

  /// VM instances to patch.
  /// Structure is documented below.
  final Input<PatchDeploymentInstanceFilter> instanceFilter;

  /// Schedule a one-time execution.
  /// Structure is documented below.
  final Input<PatchDeploymentOneTimeSchedule>? oneTimeSchedule;

  /// Patch configuration that is applied.
  /// Structure is documented below.
  final Input<PatchDeploymentPatchConfig>? patchConfig;

  /// A name for the patch deployment in the project. When creating a name the following rules apply:
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-63 characters.
  /// * Must end with a number or a letter.
  /// * Must be unique within the project.
  final Input<String> patchDeploymentId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Schedule recurring executions.
  /// Structure is documented below.
  final Input<PatchDeploymentRecurringSchedule>? recurringSchedule;

  /// Rollout strategy of the patch job.
  /// Structure is documented below.
  final Input<PatchDeploymentRollout>? rollout;

  PatchDeploymentArgs({
    this.description,
    this.duration,
    required this.instanceFilter,
    this.oneTimeSchedule,
    this.patchConfig,
    required this.patchDeploymentId,
    this.project,
    this.recurringSchedule,
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
    map['instanceFilter'] = Input.mapInputValue<PatchDeploymentInstanceFilter,
        Map<String, dynamic>>(instanceFilter, (value) => value.toMap());
    final oneTimeScheduleValue = oneTimeSchedule;
    if (oneTimeScheduleValue != null) {
      map['oneTimeSchedule'] = Input.mapOptionalInputValue<
          PatchDeploymentOneTimeSchedule,
          Map<String, dynamic>>(oneTimeScheduleValue, (value) => value.toMap());
    }
    final patchConfigValue = patchConfig;
    if (patchConfigValue != null) {
      map['patchConfig'] = Input.mapOptionalInputValue<
          PatchDeploymentPatchConfig,
          Map<String, dynamic>>(patchConfigValue, (value) => value.toMap());
    }
    map['patchDeploymentId'] = patchDeploymentId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final recurringScheduleValue = recurringSchedule;
    if (recurringScheduleValue != null) {
      map['recurringSchedule'] = Input.mapOptionalInputValue<
              PatchDeploymentRecurringSchedule, Map<String, dynamic>>(
          recurringScheduleValue, (value) => value.toMap());
    }
    final rolloutValue = rollout;
    if (rolloutValue != null) {
      map['rollout'] = Input.mapOptionalInputValue<PatchDeploymentRollout,
          Map<String, dynamic>>(rolloutValue, (value) => value.toMap());
    }
    return map;
  }

  factory PatchDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return PatchDeploymentArgs(
      description: Input.asOptionalInput<String>(map['description']),
      duration: Input.asOptionalInput<String>(map['duration']),
      instanceFilter:
          Input.asInput<PatchDeploymentInstanceFilter>(map['instanceFilter']),
      oneTimeSchedule: Input.asOptionalInput<PatchDeploymentOneTimeSchedule>(
          map['oneTimeSchedule']),
      patchConfig:
          Input.asOptionalInput<PatchDeploymentPatchConfig>(map['patchConfig']),
      patchDeploymentId: Input.asInput<String>(map['patchDeploymentId']),
      project: Input.asOptionalInput<String>(map['project']),
      recurringSchedule:
          Input.asOptionalInput<PatchDeploymentRecurringSchedule>(
              map['recurringSchedule']),
      rollout: Input.asOptionalInput<PatchDeploymentRollout>(map['rollout']),
    );
  }
}
