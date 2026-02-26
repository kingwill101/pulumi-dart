// ignore_for_file: unused_element, unnecessary_cast

import 'one_time_schedule_response2.dart';
import 'patch_config_response2.dart';
import 'patch_instance_filter_response2.dart';
import 'patch_rollout_response2.dart';
import 'recurring_schedule_response2.dart';

/// Result data returned by getPatchDeployment.
class GetPatchDeploymentResult2 {
  /// Time the patch deployment was created. Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  final String createTime;

  /// Optional. Description of the patch deployment. Length of the description is limited to 1024 characters.
  final String description;

  /// Optional. Duration of the patch. After the duration ends, the patch times out.
  final String duration;

  /// VM instances to patch.
  final PatchInstanceFilterResponse2 instanceFilter;

  /// The last time a patch job was started by this deployment. Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  final String lastExecuteTime;

  /// Unique name for the patch deployment resource in a project. The patch deployment name is in the form: `projects/{project_id}/patchDeployments/{patch_deployment_id}`. This field is ignored when you create a new patch deployment.
  final String name;

  /// Schedule a one-time execution.
  final OneTimeScheduleResponse2 oneTimeSchedule;

  /// Optional. Patch configuration that is applied.
  final PatchConfigResponse2 patchConfig;

  /// Schedule recurring executions.
  final RecurringScheduleResponse2 recurringSchedule;

  /// Optional. Rollout strategy of the patch job.
  final PatchRolloutResponse2 rollout;

  /// Current state of the patch deployment.
  final String state;

  /// Time the patch deployment was last updated. Timestamp is in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
  final String updateTime;

  GetPatchDeploymentResult2({
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

  factory GetPatchDeploymentResult2.fromMap(Map<String, dynamic> map) {
    return GetPatchDeploymentResult2(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      duration: map['duration'] as String,
      instanceFilter: PatchInstanceFilterResponse2.fromMap(
          (map['instanceFilter'] as Map).cast<String, dynamic>()),
      lastExecuteTime: map['lastExecuteTime'] as String,
      name: map['name'] as String,
      oneTimeSchedule: OneTimeScheduleResponse2.fromMap(
          (map['oneTimeSchedule'] as Map).cast<String, dynamic>()),
      patchConfig: PatchConfigResponse2.fromMap(
          (map['patchConfig'] as Map).cast<String, dynamic>()),
      recurringSchedule: RecurringScheduleResponse2.fromMap(
          (map['recurringSchedule'] as Map).cast<String, dynamic>()),
      rollout: PatchRolloutResponse2.fromMap(
          (map['rollout'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
