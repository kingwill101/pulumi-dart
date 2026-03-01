// ignore_for_file: unused_element, unnecessary_cast

/// The details of a metadata restore operation.
class RestoreResponse {
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

  /// Creates a new [RestoreResponse].
  /// [backup] The relative resource name of the metastore service backup to restore from, in the following form:projects/{project_id}/locations/{location_id}/services/{service_id}/backups/{backup_id}.
  /// [backupLocation] Optional. A Cloud Storage URI specifying where the backup artifacts are stored, in the format gs:///.
  /// [details] The restore details containing the revision of the service to be restored to, in format of JSON.
  /// [endTime] The time when the restore ended.
  /// [startTime] The time when the restore started.
  /// [state] The current state of the restore.
  /// [type] The type of restore.
  RestoreResponse({
    required this.backup,
    required this.backupLocation,
    required this.details,
    required this.endTime,
    required this.startTime,
    required this.state,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backup': backup,
      'backupLocation': backupLocation,
      'details': details,
      'endTime': endTime,
      'startTime': startTime,
      'state': state,
      'type': type,
    };
  }

  factory RestoreResponse.fromMap(Map<String, dynamic> map) {
    return RestoreResponse(
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
