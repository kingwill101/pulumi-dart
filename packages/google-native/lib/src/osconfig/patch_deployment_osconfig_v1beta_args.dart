// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'one_time_schedule_osconfig_v1beta.dart';
import 'patch_config_osconfig_v1beta.dart';
import 'patch_instance_filter_osconfig_v1beta.dart';
import 'patch_rollout_osconfig_v1beta.dart';
import 'recurring_schedule_osconfig_v1beta.dart';

/// {@template pulumi_osconfig_v1beta_patch_deployment_osconfig_v1beta_args_doc}
/// The set of arguments for PatchDeployment.
/// {@endtemplate}
/// {@macro pulumi_osconfig_v1beta_patch_deployment_osconfig_v1beta_args_doc}
class PatchDeploymentOsconfigV1betaArgs {
  /// Optional. Description of the patch deployment. Length of the description is limited to 1024 characters.
  final pulumi.Input<String>? description;

  /// Optional. Duration of the patch. After the duration ends, the patch times out.
  final pulumi.Input<String>? duration;

  /// VM instances to patch.
  final pulumi.Input<PatchInstanceFilterOsconfigV1beta> instanceFilter;

  /// Unique name for the patch deployment resource in a project. The patch deployment name is in the form: `projects/{project_id}/patchDeployments/{patch_deployment_id}`. This field is ignored when you create a new patch deployment.
  final pulumi.Input<String>? name;

  /// Schedule a one-time execution.
  final pulumi.Input<OneTimeScheduleOsconfigV1beta> oneTimeSchedule;

  /// Optional. Patch configuration that is applied.
  final pulumi.Input<PatchConfigOsconfigV1beta>? patchConfig;

  /// Required. A name for the patch deployment in the project. When creating a name the following rules apply: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the project.
  final pulumi.Input<String> patchDeploymentId;
  final pulumi.Input<String>? project;

  /// Schedule recurring executions.
  final pulumi.Input<RecurringScheduleOsconfigV1beta> recurringSchedule;

  /// Optional. Rollout strategy of the patch job.
  final pulumi.Input<PatchRolloutOsconfigV1beta>? rollout;

  /// Creates a new [PatchDeploymentOsconfigV1betaArgs].
  /// [description] Optional. Description of the patch deployment. Length of the description is limited to 1024 characters.
  /// [duration] Optional. Duration of the patch. After the duration ends, the patch times out.
  /// [instanceFilter] VM instances to patch.
  /// [name] Unique name for the patch deployment resource in a project. The patch deployment name is in the form: `projects/{project_id}/patchDeployments/{patch_deployment_id}`. This field is ignored when you create a new patch deployment.
  /// [oneTimeSchedule] Schedule a one-time execution.
  /// [patchConfig] Optional. Patch configuration that is applied.
  /// [patchDeploymentId] Required. A name for the patch deployment in the project. When creating a name the following rules apply: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the project.
  /// [project] Optional.
  /// [recurringSchedule] Schedule recurring executions.
  /// [rollout] Optional. Rollout strategy of the patch job.
  PatchDeploymentOsconfigV1betaArgs({
    String? description,
    String? duration,
    required PatchInstanceFilterOsconfigV1beta instanceFilter,
    String? name,
    required OneTimeScheduleOsconfigV1beta oneTimeSchedule,
    PatchConfigOsconfigV1beta? patchConfig,
    required String patchDeploymentId,
    String? project,
    required RecurringScheduleOsconfigV1beta recurringSchedule,
    PatchRolloutOsconfigV1beta? rollout,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        duration = pulumi.Input.asOptionalInput<String>(duration),
        instanceFilter =
            pulumi.Input.asInput<PatchInstanceFilterOsconfigV1beta>(
                instanceFilter),
        name = pulumi.Input.asOptionalInput<String>(name),
        oneTimeSchedule = pulumi.Input.asInput<OneTimeScheduleOsconfigV1beta>(
            oneTimeSchedule),
        patchConfig = pulumi.Input.asOptionalInput<PatchConfigOsconfigV1beta>(
            patchConfig),
        patchDeploymentId = pulumi.Input.asInput<String>(patchDeploymentId),
        project = pulumi.Input.asOptionalInput<String>(project),
        recurringSchedule =
            pulumi.Input.asInput<RecurringScheduleOsconfigV1beta>(
                recurringSchedule),
        rollout =
            pulumi.Input.asOptionalInput<PatchRolloutOsconfigV1beta>(rollout);

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
    map['instanceFilter'] = pulumi.Input.mapInputValue<
        PatchInstanceFilterOsconfigV1beta,
        Map<String, dynamic>>(instanceFilter, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['oneTimeSchedule'] = pulumi.Input.mapInputValue<
        OneTimeScheduleOsconfigV1beta,
        Map<String, dynamic>>(oneTimeSchedule, (value) => value.toMap());
    final patchConfigValue = patchConfig;
    if (patchConfigValue != null) {
      map['patchConfig'] = pulumi.Input.mapOptionalInputValue<
          PatchConfigOsconfigV1beta,
          Map<String, dynamic>>(patchConfigValue, (value) => value.toMap());
    }
    map['patchDeploymentId'] = patchDeploymentId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['recurringSchedule'] = pulumi.Input.mapInputValue<
        RecurringScheduleOsconfigV1beta,
        Map<String, dynamic>>(recurringSchedule, (value) => value.toMap());
    final rolloutValue = rollout;
    if (rolloutValue != null) {
      map['rollout'] = pulumi.Input.mapOptionalInputValue<
          PatchRolloutOsconfigV1beta,
          Map<String, dynamic>>(rolloutValue, (value) => value.toMap());
    }
    return map;
  }

  factory PatchDeploymentOsconfigV1betaArgs.fromMap(Map<String, dynamic> map) {
    return PatchDeploymentOsconfigV1betaArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      duration: map['duration'] == null ? null : map['duration'] as String,
      instanceFilter: PatchInstanceFilterOsconfigV1beta.fromMap(
          (map['instanceFilter'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      oneTimeSchedule: OneTimeScheduleOsconfigV1beta.fromMap(
          (map['oneTimeSchedule'] as Map).cast<String, dynamic>()),
      patchConfig: map['patchConfig'] == null
          ? null
          : PatchConfigOsconfigV1beta.fromMap(
              (map['patchConfig'] as Map).cast<String, dynamic>()),
      patchDeploymentId: map['patchDeploymentId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      recurringSchedule: RecurringScheduleOsconfigV1beta.fromMap(
          (map['recurringSchedule'] as Map).cast<String, dynamic>()),
      rollout: map['rollout'] == null
          ? null
          : PatchRolloutOsconfigV1beta.fromMap(
              (map['rollout'] as Map).cast<String, dynamic>()),
    );
  }
}
