// ignore_for_file: unused_element, unnecessary_cast

import 'one_time_schedule_response_osconfig_v1beta.dart';
import 'patch_config_response_osconfig_v1beta.dart';
import 'patch_instance_filter_response_osconfig_v1beta.dart';
import 'patch_rollout_response_osconfig_v1beta.dart';
import 'recurring_schedule_response_osconfig_v1beta.dart';

/// Result data returned by getPatchDeployment.
class GetPatchDeploymentOsconfigV1betaResult {
  /// Time the patch deployment was created. Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  final String createTime;

  /// Optional. Description of the patch deployment. Length of the description is limited to 1024 characters.
  final String description;

  /// Optional. Duration of the patch. After the duration ends, the patch times out.
  final String duration;

  /// VM instances to patch.
  final PatchInstanceFilterResponseOsconfigV1beta instanceFilter;

  /// The last time a patch job was started by this deployment. Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  final String lastExecuteTime;

  /// Unique name for the patch deployment resource in a project. The patch deployment name is in the form: `projects/{project_id}/patchDeployments/{patch_deployment_id}`. This field is ignored when you create a new patch deployment.
  final String name;

  /// Schedule a one-time execution.
  final OneTimeScheduleResponseOsconfigV1beta oneTimeSchedule;

  /// Optional. Patch configuration that is applied.
  final PatchConfigResponseOsconfigV1beta patchConfig;

  /// Schedule recurring executions.
  final RecurringScheduleResponseOsconfigV1beta recurringSchedule;

  /// Optional. Rollout strategy of the patch job.
  final PatchRolloutResponseOsconfigV1beta rollout;

  /// Current state of the patch deployment.
  final String state;

  /// Time the patch deployment was last updated. Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  final String updateTime;

  GetPatchDeploymentOsconfigV1betaResult({
    required this.createTime,
    required this.description,
    required this.duration,
    required this.instanceFilter,
    required this.lastExecuteTime,
    required this.name,
    required this.oneTimeSchedule,
    required this.patchConfig,
    required this.recurringSchedule,
    required this.rollout,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['duration'] = duration;
    map['instanceFilter'] = instanceFilter.toMap();
    map['lastExecuteTime'] = lastExecuteTime;
    map['name'] = name;
    map['oneTimeSchedule'] = oneTimeSchedule.toMap();
    map['patchConfig'] = patchConfig.toMap();
    map['recurringSchedule'] = recurringSchedule.toMap();
    map['rollout'] = rollout.toMap();
    map['state'] = state;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetPatchDeploymentOsconfigV1betaResult.fromMap(
      Map<String, dynamic> map) {
    return GetPatchDeploymentOsconfigV1betaResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      duration: map['duration'] as String,
      instanceFilter: PatchInstanceFilterResponseOsconfigV1beta.fromMap(
          (map['instanceFilter'] as Map).cast<String, dynamic>()),
      lastExecuteTime: map['lastExecuteTime'] as String,
      name: map['name'] as String,
      oneTimeSchedule: OneTimeScheduleResponseOsconfigV1beta.fromMap(
          (map['oneTimeSchedule'] as Map).cast<String, dynamic>()),
      patchConfig: PatchConfigResponseOsconfigV1beta.fromMap(
          (map['patchConfig'] as Map).cast<String, dynamic>()),
      recurringSchedule: RecurringScheduleResponseOsconfigV1beta.fromMap(
          (map['recurringSchedule'] as Map).cast<String, dynamic>()),
      rollout: PatchRolloutResponseOsconfigV1beta.fromMap(
          (map['rollout'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
