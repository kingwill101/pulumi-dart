// ignore_for_file: unused_element, unnecessary_cast

import 'restore_config_response.dart';

/// Result data returned by getRestorePlan.
class GetRestorePlanResult {
  /// Immutable. A reference to the BackupPlan from which Backups may be used as the source for Restores created via this RestorePlan. Format: `projects/*/locations/*/backupPlans/*`.
  final String backupPlan;

  /// Immutable. The target cluster into which Restores created via this RestorePlan will restore data. NOTE: the cluster's region must be the same as the RestorePlan. Valid formats: - `projects/*/locations/*/clusters/*` - `projects/*/zones/*/clusters/*`
  final String cluster;

  /// The timestamp when this RestorePlan resource was created.
  final String createTime;

  /// Optional. User specified descriptive string for this RestorePlan.
  final String description;

  /// `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a restore from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform restore updates in order to avoid race conditions: An `etag` is returned in the response to `GetRestorePlan`, and systems are expected to put that etag in the request to `UpdateRestorePlan` or `DeleteRestorePlan` to ensure that their change will be applied to the same version of the resource.
  final String etag;

  /// Optional. A set of custom labels supplied by user.
  final Map<String, String> labels;

  /// The full name of the RestorePlan resource. Format: `projects/*/locations/*/restorePlans/*`.
  final String name;

  /// Configuration of Restores created via this RestorePlan.
  final RestoreConfigResponse restoreConfig;

  /// State of the RestorePlan. This State field reflects the various stages a RestorePlan can be in during the Create operation.
  final String state;

  /// Human-readable description of why RestorePlan is in the current `state`
  final String stateReason;

  /// Server generated global unique identifier of [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier) format.
  final String uid;

  /// The timestamp when this RestorePlan resource was last updated.
  final String updateTime;

  GetRestorePlanResult({
    required this.backupPlan,
    required this.cluster,
    required this.createTime,
    required this.description,
    required this.etag,
    required this.labels,
    required this.name,
    required this.restoreConfig,
    required this.state,
    required this.stateReason,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupPlan'] = backupPlan;
    map['cluster'] = cluster;
    map['createTime'] = createTime;
    map['description'] = description;
    map['etag'] = etag;
    map['labels'] = labels;
    map['name'] = name;
    map['restoreConfig'] = restoreConfig.toMap();
    map['state'] = state;
    map['stateReason'] = stateReason;
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetRestorePlanResult.fromMap(Map<String, dynamic> map) {
    return GetRestorePlanResult(
      backupPlan: map['backupPlan'] as String,
      cluster: map['cluster'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      etag: map['etag'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      restoreConfig: RestoreConfigResponse.fromMap(
          (map['restoreConfig'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      stateReason: map['stateReason'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
