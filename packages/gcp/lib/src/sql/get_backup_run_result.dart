// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getBackupRun.
class GetBackupRunResult {
  final int backupId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instance;

  /// Location of the backups.
  final String location;
  final bool? mostRecent;
  final String project;

  /// The time the backup operation actually started in UTC timezone in RFC 3339 format, for
  /// example 2012-11-15T16:19:00.094Z.
  final String startTime;

  /// The status of this run. Refer to [API reference](https://cloud.google.com/sql/docs/mysql/admin-api/rest/v1beta4/backupRuns#SqlBackupRunStatus) for possible status values.
  final String status;

  /// Creates a new [GetBackupRunResult].
  /// [backupId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instance] Required.
  /// [location] Location of the backups.
  /// [mostRecent] Optional.
  /// [project] Required.
  /// [startTime] The time the backup operation actually started in UTC timezone in RFC 3339 format, for
  /// [status] The status of this run. Refer to [API reference](https://cloud.google.com/sql/docs/mysql/admin-api/rest/v1beta4/backupRuns#SqlBackupRunStatus) for possible status values.
  GetBackupRunResult({
    required this.backupId,
    required this.id,
    required this.instance,
    required this.location,
    this.mostRecent,
    required this.project,
    required this.startTime,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupId': backupId,
      'id': id,
      'instance': instance,
      'location': location,
      'mostRecent': ?mostRecent,
      'project': project,
      'startTime': startTime,
      'status': status,
    };
  }

  factory GetBackupRunResult.fromMap(Map<String, dynamic> map) {
    return GetBackupRunResult(
      backupId: map['backupId'] as int,
      id: map['id'] as String,
      instance: map['instance'] as String,
      location: map['location'] as String,
      mostRecent: map['mostRecent'] == null ? null : map['mostRecent'] as bool,
      project: map['project'] as String,
      startTime: map['startTime'] as String,
      status: map['status'] as String,
    );
  }
}
