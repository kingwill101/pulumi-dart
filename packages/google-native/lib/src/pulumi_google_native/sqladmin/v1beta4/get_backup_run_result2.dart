// ignore_for_file: unused_element, unnecessary_cast

import 'disk_encryption_configuration_response2.dart';
import 'disk_encryption_status_response2.dart';
import 'operation_error_response5.dart';

/// Result data returned by getBackupRun.
class GetBackupRunResult2 {
  /// Specifies the kind of backup, PHYSICAL or DEFAULT_SNAPSHOT.
  final String backupKind;

  /// The description of this run, only applicable to on-demand backups.
  final String description;

  /// Encryption configuration specific to a backup.
  final DiskEncryptionConfigurationResponse2 diskEncryptionConfiguration;

  /// Encryption status specific to a backup.
  final DiskEncryptionStatusResponse2 diskEncryptionStatus;

  /// The time the backup operation completed in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final String endTime;

  /// The time the run was enqueued in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final String enqueuedTime;

  /// Information about why the backup operation failed. This is only present if the run has the FAILED status.
  final OperationErrorResponse5 error;

  /// Name of the database instance.
  final String instance;

  /// This is always `sql#backupRun`.
  final String kind;

  /// Location of the backups.
  final String location;

  /// The URI of this resource.
  final String selfLink;

  /// The time the backup operation actually started in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final String startTime;

  /// The status of this run.
  final String status;

  /// Backup time zone to prevent restores to an instance with a different time zone. Now relevant only for SQL Server.
  final String timeZone;

  /// The type of this run; can be either "AUTOMATED" or "ON_DEMAND" or "FINAL". This field defaults to "ON_DEMAND" and is ignored, when specified for insert requests.
  final String type;

  /// The start time of the backup window during which this the backup was attempted in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final String windowStartTime;

  GetBackupRunResult2({
    required this.backupKind,
    required this.description,
    required this.diskEncryptionConfiguration,
    required this.diskEncryptionStatus,
    required this.endTime,
    required this.enqueuedTime,
    required this.error,
    required this.instance,
    required this.kind,
    required this.location,
    required this.selfLink,
    required this.startTime,
    required this.status,
    required this.timeZone,
    required this.type,
    required this.windowStartTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupKind'] = backupKind;
    map['description'] = description;
    map['diskEncryptionConfiguration'] = diskEncryptionConfiguration.toMap();
    map['diskEncryptionStatus'] = diskEncryptionStatus.toMap();
    map['endTime'] = endTime;
    map['enqueuedTime'] = enqueuedTime;
    map['error'] = error.toMap();
    map['instance'] = instance;
    map['kind'] = kind;
    map['location'] = location;
    map['selfLink'] = selfLink;
    map['startTime'] = startTime;
    map['status'] = status;
    map['timeZone'] = timeZone;
    map['type'] = type;
    map['windowStartTime'] = windowStartTime;
    return map;
  }

  factory GetBackupRunResult2.fromMap(Map<String, dynamic> map) {
    return GetBackupRunResult2(
      backupKind: map['backupKind'] as String,
      description: map['description'] as String,
      diskEncryptionConfiguration: DiskEncryptionConfigurationResponse2.fromMap(
          (map['diskEncryptionConfiguration'] as Map).cast<String, dynamic>()),
      diskEncryptionStatus: DiskEncryptionStatusResponse2.fromMap(
          (map['diskEncryptionStatus'] as Map).cast<String, dynamic>()),
      endTime: map['endTime'] as String,
      enqueuedTime: map['enqueuedTime'] as String,
      error: OperationErrorResponse5.fromMap(
          (map['error'] as Map).cast<String, dynamic>()),
      instance: map['instance'] as String,
      kind: map['kind'] as String,
      location: map['location'] as String,
      selfLink: map['selfLink'] as String,
      startTime: map['startTime'] as String,
      status: map['status'] as String,
      timeZone: map['timeZone'] as String,
      type: map['type'] as String,
      windowStartTime: map['windowStartTime'] as String,
    );
  }
}
