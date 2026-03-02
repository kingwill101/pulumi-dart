// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Fields for tracking refresh job on the share or container.
class RefreshDetailsResponse {
  /// Indicates the relative path of the error xml for the last refresh job on this particular share or container, if any. This could be a failed job or a successful job.
  final pulumi.Input<String>? errorManifestFile;
  /// If a refresh job is currently in progress on this share or container, this field indicates the ARM resource ID of that job. The field is empty if no job is in progress.
  final pulumi.Input<String>? inProgressRefreshJobId;
  /// Indicates the completed time for the last refresh job on this particular share or container, if any.This could be a failed job or a successful job.
  final pulumi.Input<String>? lastCompletedRefreshJobTimeInUTC;
  /// Indicates the id of the last refresh job on this particular share or container,if any. This could be a failed job or a successful job.
  final pulumi.Input<String>? lastJob;

  /// Creates a new [RefreshDetailsResponse].
  /// [errorManifestFile] Indicates the relative path of the error xml for the last refresh job on this particular share or container, if any. This could be a failed job or a successful job.
  /// [inProgressRefreshJobId] If a refresh job is currently in progress on this share or container, this field indicates the ARM resource ID of that job. The field is empty if no job is in progress.
  /// [lastCompletedRefreshJobTimeInUTC] Indicates the completed time for the last refresh job on this particular share or container, if any.This could be a failed job or a successful job.
  /// [lastJob] Indicates the id of the last refresh job on this particular share or container,if any. This could be a failed job or a successful job.
  RefreshDetailsResponse({
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

  factory RefreshDetailsResponse.fromMap(Map<String, dynamic> map) {
    return RefreshDetailsResponse(
      errorManifestFile: map['errorManifestFile'] == null ? null : (map['errorManifestFile']! as String).input(),
      inProgressRefreshJobId: map['inProgressRefreshJobId'] == null ? null : (map['inProgressRefreshJobId']! as String).input(),
      lastCompletedRefreshJobTimeInUTC: map['lastCompletedRefreshJobTimeInUTC'] == null ? null : (map['lastCompletedRefreshJobTimeInUTC']! as String).input(),
      lastJob: map['lastJob'] == null ? null : (map['lastJob']! as String).input(),
    );
  }
}

