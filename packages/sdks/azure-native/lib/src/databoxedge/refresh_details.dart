// ignore_for_file: unused_element, unnecessary_cast


/// Fields for tracking refresh job on the share or container.
class RefreshDetails {
  /// Indicates the relative path of the error xml for the last refresh job on this particular share or container, if any. This could be a failed job or a successful job.
  final String? errorManifestFile;
  /// If a refresh job is currently in progress on this share or container, this field indicates the ARM resource ID of that job. The field is empty if no job is in progress.
  final String? inProgressRefreshJobId;
  /// Indicates the completed time for the last refresh job on this particular share or container, if any.This could be a failed job or a successful job.
  final String? lastCompletedRefreshJobTimeInUTC;
  /// Indicates the id of the last refresh job on this particular share or container,if any. This could be a failed job or a successful job.
  final String? lastJob;

  /// Creates a new [RefreshDetails].
  /// [errorManifestFile] Indicates the relative path of the error xml for the last refresh job on this particular share or container, if any. This could be a failed job or a successful job.
  /// [inProgressRefreshJobId] If a refresh job is currently in progress on this share or container, this field indicates the ARM resource ID of that job. The field is empty if no job is in progress.
  /// [lastCompletedRefreshJobTimeInUTC] Indicates the completed time for the last refresh job on this particular share or container, if any.This could be a failed job or a successful job.
  /// [lastJob] Indicates the id of the last refresh job on this particular share or container,if any. This could be a failed job or a successful job.
  RefreshDetails({
    this.errorManifestFile,
    this.inProgressRefreshJobId,
    this.lastCompletedRefreshJobTimeInUTC,
    this.lastJob,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorManifestFile': ?errorManifestFile,
      'inProgressRefreshJobId': ?inProgressRefreshJobId,
      'lastCompletedRefreshJobTimeInUTC': ?lastCompletedRefreshJobTimeInUTC,
      'lastJob': ?lastJob,
    };
  }

  factory RefreshDetails.fromMap(Map<String, dynamic> map) {
    return RefreshDetails(
      errorManifestFile: map['errorManifestFile'] == null ? null : map['errorManifestFile'] as String,
      inProgressRefreshJobId: map['inProgressRefreshJobId'] == null ? null : map['inProgressRefreshJobId'] as String,
      lastCompletedRefreshJobTimeInUTC: map['lastCompletedRefreshJobTimeInUTC'] == null ? null : map['lastCompletedRefreshJobTimeInUTC'] as String,
      lastJob: map['lastJob'] == null ? null : map['lastJob'] as String,
    );
  }
}

