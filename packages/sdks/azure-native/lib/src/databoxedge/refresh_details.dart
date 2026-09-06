// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Fields for tracking refresh job on the share or container.
class RefreshDetails {
  /// Indicates the relative path of the error xml for the last refresh job on this particular share or container, if any. This could be a failed job or a successful job.
  final pulumi.Input<String?>? errorManifestFile;
  /// If a refresh job is currently in progress on this share or container, this field indicates the ARM resource ID of that job. The field is empty if no job is in progress.
  final pulumi.Input<String?>? inProgressRefreshJobId;
  /// Indicates the completed time for the last refresh job on this particular share or container, if any.This could be a failed job or a successful job.
  final pulumi.Input<String?>? lastCompletedRefreshJobTimeInUTC;
  /// Indicates the id of the last refresh job on this particular share or container,if any. This could be a failed job or a successful job.
  final pulumi.Input<String?>? lastJob;

  /// Creates a new [RefreshDetails].
  /// [errorManifestFile] Indicates the relative path of the error xml for the last refresh job on this particular share or container, if any. This could be a failed job or a successful job.
  /// [inProgressRefreshJobId] If a refresh job is currently in progress on this share or container, this field indicates the ARM resource ID of that job. The field is empty if no job is in progress.
  /// [lastCompletedRefreshJobTimeInUTC] Indicates the completed time for the last refresh job on this particular share or container, if any.This could be a failed job or a successful job.
  /// [lastJob] Indicates the id of the last refresh job on this particular share or container,if any. This could be a failed job or a successful job.
  const RefreshDetails({
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
      errorManifestFile: (() { final guardedValue = map['errorManifestFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inProgressRefreshJobId: (() { final guardedValue = map['inProgressRefreshJobId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastCompletedRefreshJobTimeInUTC: (() { final guardedValue = map['lastCompletedRefreshJobTimeInUTC']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastJob: (() { final guardedValue = map['lastJob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
