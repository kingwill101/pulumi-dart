// ignore_for_file: unused_element, unnecessary_cast

import 'one_time_schedule_response.dart';
import 'patch_config_response.dart';
import 'patch_instance_filter_response.dart';
import 'patch_rollout_response.dart';
import 'recurring_schedule_response.dart';

/// Result data returned by getPatchDeployment.
class GetPatchDeploymentResult {
  /// Time the patch deployment was created. Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  final String createTime;

  /// Optional. Description of the patch deployment. Length of the description is limited to 1024 characters.
  final String description;

  /// Optional. Duration of the patch. After the duration ends, the patch times out.
  final String duration;

  /// VM instances to patch.
  final PatchInstanceFilterResponse instanceFilter;

  /// The last time a patch job was started by this deployment. Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  final String lastExecuteTime;

  /// Unique name for the patch deployment resource in a project. The patch deployment name is in the form: `projects/{project_id}/patchDeployments/{patch_deployment_id}`. This field is ignored when you create a new patch deployment.
  final String name;

  /// Schedule a one-time execution.
  final OneTimeScheduleResponse oneTimeSchedule;

  /// Optional. Patch configuration that is applied.
  final PatchConfigResponse patchConfig;

  /// Schedule recurring executions.
  final RecurringScheduleResponse recurringSchedule;

  /// Optional. Rollout strategy of the patch job.
  final PatchRolloutResponse rollout;

  /// Current state of the patch deployment.
  final String state;

  /// Time the patch deployment was last updated. Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  final String updateTime;

  /// Creates a new [GetPatchDeploymentResult].
  /// [createTime] Time the patch deployment was created. Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  /// [description] Optional. Description of the patch deployment. Length of the description is limited to 1024 characters.
  /// [duration] Optional. Duration of the patch. After the duration ends, the patch times out.
  /// [instanceFilter] VM instances to patch.
  /// [lastExecuteTime] The last time a patch job was started by this deployment. Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  /// [name] Unique name for the patch deployment resource in a project. The patch deployment name is in the form: `projects/{project_id}/patchDeployments/{patch_deployment_id}`. This field is ignored when you create a new patch deployment.
  /// [oneTimeSchedule] Schedule a one-time execution.
  /// [patchConfig] Optional. Patch configuration that is applied.
  /// [recurringSchedule] Schedule recurring executions.
  /// [rollout] Optional. Rollout strategy of the patch job.
  /// [state] Current state of the patch deployment.
  /// [updateTime] Time the patch deployment was last updated. Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  GetPatchDeploymentResult({
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
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'duration': duration,
      'instanceFilter': instanceFilter.toMap(),
      'lastExecuteTime': lastExecuteTime,
      'name': name,
      'oneTimeSchedule': oneTimeSchedule.toMap(),
      'patchConfig': patchConfig.toMap(),
      'recurringSchedule': recurringSchedule.toMap(),
      'rollout': rollout.toMap(),
      'state': state,
      'updateTime': updateTime,
    };
  }

  factory GetPatchDeploymentResult.fromMap(Map<String, dynamic> map) {
    return GetPatchDeploymentResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      duration: map['duration'] as String,
      instanceFilter: PatchInstanceFilterResponse.fromMap(
        (map['instanceFilter'] as Map).cast<String, dynamic>(),
      ),
      lastExecuteTime: map['lastExecuteTime'] as String,
      name: map['name'] as String,
      oneTimeSchedule: OneTimeScheduleResponse.fromMap(
        (map['oneTimeSchedule'] as Map).cast<String, dynamic>(),
      ),
      patchConfig: PatchConfigResponse.fromMap(
        (map['patchConfig'] as Map).cast<String, dynamic>(),
      ),
      recurringSchedule: RecurringScheduleResponse.fromMap(
        (map['recurringSchedule'] as Map).cast<String, dynamic>(),
      ),
      rollout: PatchRolloutResponse.fromMap(
        (map['rollout'] as Map).cast<String, dynamic>(),
      ),
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
