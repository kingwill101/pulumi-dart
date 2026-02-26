// ignore_for_file: unused_element, unnecessary_cast

/// The details of a metadata restore operation.
class RestoreResponse2 {
  /// The relative resource name of the metastore service backup to restore from, in the following form:projects/{project_id}/locations/{location_id}/services/{service_id}/backups/{backup_id}.
  final String backup;

  /// Optional. A Cloud Storage URI specifying where the backup artifacts are stored, in the format gs:///.
  final String backupLocation;

  /// The restore details containing the revision of the service to be restored to, in format of JSON.
  final String details;

  /// The time when the restore ended.
  final String endTime;

  /// The time when the restore started.
  final String startTime;

  /// The current state of the restore.
  final String state;

  /// The type of restore.
  final String type;

  RestoreResponse2({
    required this.backup,
    required this.backupLocation,
    required this.details,
    required this.endTime,
    required this.startTime,
    required this.state,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backup'] = backup;
    map['backupLocation'] = backupLocation;
    map['details'] = details;
    map['endTime'] = endTime;
    map['startTime'] = startTime;
    map['state'] = state;
    map['type'] = type;
    return map;
  }

  factory RestoreResponse2.fromMap(Map<String, dynamic> map) {
    return RestoreResponse2(
      backup: map['backup'] as String,
      backupLocation: map['backupLocation'] as String,
      details: map['details'] as String,
      endTime: map['endTime'] as String,
      startTime: map['startTime'] as String,
      state: map['state'] as String,
      type: map['type'] as String,
    );
  }
}
