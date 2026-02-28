// ignore_for_file: unused_element, unnecessary_cast

import 'restore_config_response.dart';

/// Result data returned by getRestore.
class GetRestoreResult {
  /// Immutable. A reference to the Backup used as the source from which this Restore will restore. Note that this Backup must be a sub-resource of the RestorePlan's backup_plan. Format: `projects/*/locations/*/backupPlans/*/backups/*`.
  final String backup;

  /// The target cluster into which this Restore will restore data. Valid formats: - `projects/*/locations/*/clusters/*` - `projects/*/zones/*/clusters/*` Inherited from parent RestorePlan's cluster value.
  final String cluster;

  /// Timestamp of when the restore operation completed.
  final String completeTime;

  /// The timestamp when this Restore resource was created.
  final String createTime;

  /// User specified descriptive string for this Restore.
  final String description;

  /// `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a restore from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform restore updates in order to avoid race conditions: An `etag` is returned in the response to `GetRestore`, and systems are expected to put that etag in the request to `UpdateRestore` or `DeleteRestore` to ensure that their change will be applied to the same version of the resource.
  final String etag;

  /// A set of custom labels supplied by user.
  final Map<String, String> labels;

  /// The full name of the Restore resource. Format: `projects/*/locations/*/restorePlans/*/restores/*`
  final String name;

  /// Number of resources excluded during the restore execution.
  final int resourcesExcludedCount;

  /// Number of resources that failed to be restored during the restore execution.
  final int resourcesFailedCount;

  /// Number of resources restored during the restore execution.
  final int resourcesRestoredCount;

  /// Configuration of the Restore. Inherited from parent RestorePlan's restore_config.
  final RestoreConfigResponse restoreConfig;

  /// The current state of the Restore.
  final String state;

  /// Human-readable description of why the Restore is in its current state.
  final String stateReason;

  /// Server generated global unique identifier of [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier) format.
  final String uid;

  /// The timestamp when this Restore resource was last updated.
  final String updateTime;

  /// Number of volumes restored during the restore execution.
  final int volumesRestoredCount;

  /// Creates a new [GetRestoreResult].
  /// [backup] Immutable. A reference to the Backup used as the source from which this Restore will restore. Note that this Backup must be a sub-resource of the RestorePlan's backup_plan. Format: `projects/*/locations/*/backupPlans/*/backups/*`.
  /// [cluster] The target cluster into which this Restore will restore data. Valid formats: - `projects/*/locations/*/clusters/*` - `projects/*/zones/*/clusters/*` Inherited from parent RestorePlan's cluster value.
  /// [completeTime] Timestamp of when the restore operation completed.
  /// [createTime] The timestamp when this Restore resource was created.
  /// [description] User specified descriptive string for this Restore.
  /// [etag] `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a restore from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform restore updates in order to avoid race conditions: An `etag` is returned in the response to `GetRestore`, and systems are expected to put that etag in the request to `UpdateRestore` or `DeleteRestore` to ensure that their change will be applied to the same version of the resource.
  /// [labels] A set of custom labels supplied by user.
  /// [name] The full name of the Restore resource. Format: `projects/*/locations/*/restorePlans/*/restores/*`
  /// [resourcesExcludedCount] Number of resources excluded during the restore execution.
  /// [resourcesFailedCount] Number of resources that failed to be restored during the restore execution.
  /// [resourcesRestoredCount] Number of resources restored during the restore execution.
  /// [restoreConfig] Configuration of the Restore. Inherited from parent RestorePlan's restore_config.
  /// [state] The current state of the Restore.
  /// [stateReason] Human-readable description of why the Restore is in its current state.
  /// [uid] Server generated global unique identifier of [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier) format.
  /// [updateTime] The timestamp when this Restore resource was last updated.
  /// [volumesRestoredCount] Number of volumes restored during the restore execution.
  GetRestoreResult({
    required this.backup,
    required this.cluster,
    required this.completeTime,
    required this.createTime,
    required this.description,
    required this.etag,
    required this.labels,
    required this.name,
    required this.resourcesExcludedCount,
    required this.resourcesFailedCount,
    required this.resourcesRestoredCount,
    required this.restoreConfig,
    required this.state,
    required this.stateReason,
    required this.uid,
    required this.updateTime,
    required this.volumesRestoredCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backup'] = backup;
    map['cluster'] = cluster;
    map['completeTime'] = completeTime;
    map['createTime'] = createTime;
    map['description'] = description;
    map['etag'] = etag;
    map['labels'] = labels;
    map['name'] = name;
    map['resourcesExcludedCount'] = resourcesExcludedCount;
    map['resourcesFailedCount'] = resourcesFailedCount;
    map['resourcesRestoredCount'] = resourcesRestoredCount;
    map['restoreConfig'] = restoreConfig.toMap();
    map['state'] = state;
    map['stateReason'] = stateReason;
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    map['volumesRestoredCount'] = volumesRestoredCount;
    return map;
  }

  factory GetRestoreResult.fromMap(Map<String, dynamic> map) {
    return GetRestoreResult(
      backup: map['backup'] as String,
      cluster: map['cluster'] as String,
      completeTime: map['completeTime'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      etag: map['etag'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      resourcesExcludedCount: map['resourcesExcludedCount'] as int,
      resourcesFailedCount: map['resourcesFailedCount'] as int,
      resourcesRestoredCount: map['resourcesRestoredCount'] as int,
      restoreConfig: RestoreConfigResponse.fromMap(
          (map['restoreConfig'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      stateReason: map['stateReason'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
      volumesRestoredCount: map['volumesRestoredCount'] as int,
    );
  }
}
