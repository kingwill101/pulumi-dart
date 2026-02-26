// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'backup_run_backup_kind2.dart';
import 'backup_run_type2.dart';
import 'disk_encryption_configuration2.dart';
import 'disk_encryption_status2.dart';
import 'operation_error2.dart';

/// The set of arguments for BackupRun.
class BackupRunArgs2 {
  /// Specifies the kind of backup, PHYSICAL or DEFAULT_SNAPSHOT.
  final Input<BackupRunBackupKind2>? backupKind;

  /// The description of this run, only applicable to on-demand backups.
  final Input<String>? description;

  /// Encryption configuration specific to a backup.
  final Input<DiskEncryptionConfiguration2>? diskEncryptionConfiguration;

  /// Encryption status specific to a backup.
  final Input<DiskEncryptionStatus2>? diskEncryptionStatus;

  /// The time the backup operation completed in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final Input<String>? endTime;

  /// The time the run was enqueued in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final Input<String>? enqueuedTime;

  /// Information about why the backup operation failed. This is only present if the run has the FAILED status.
  final Input<OperationError2>? error;

  /// The identifier for this backup run. Unique only for a specific Cloud SQL instance.
  final Input<String>? id;

  /// Name of the database instance.
  final Input<String> instance;

  /// This is always `sql#backupRun`.
  final Input<String>? kind;

  /// Location of the backups.
  final Input<String>? location;
  final Input<String>? project;

  /// The URI of this resource.
  final Input<String>? selfLink;

  /// The time the backup operation actually started in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final Input<String>? startTime;

  /// Backup time zone to prevent restores to an instance with a different time zone. Now relevant only for SQL Server.
  final Input<String>? timeZone;

  /// The type of this run; can be either "AUTOMATED" or "ON_DEMAND" or "FINAL". This field defaults to "ON_DEMAND" and is ignored, when specified for insert requests.
  final Input<BackupRunType2>? type;

  /// The start time of the backup window during which this the backup was attempted in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final Input<String>? windowStartTime;

  BackupRunArgs2({
    this.backupKind,
    this.description,
    this.diskEncryptionConfiguration,
    this.diskEncryptionStatus,
    this.endTime,
    this.enqueuedTime,
    this.error,
    this.id,
    required this.instance,
    this.kind,
    this.location,
    this.project,
    this.selfLink,
    this.startTime,
    this.timeZone,
    this.type,
    this.windowStartTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final backupKindValue = backupKind;
    if (backupKindValue != null) {
      map['backupKind'] =
          Input.mapOptionalInputValue<BackupRunBackupKind2, String>(
              backupKindValue, (value) => value.value);
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final diskEncryptionConfigurationValue = diskEncryptionConfiguration;
    if (diskEncryptionConfigurationValue != null) {
      map['diskEncryptionConfiguration'] = Input.mapOptionalInputValue<
              DiskEncryptionConfiguration2, Map<String, dynamic>>(
          diskEncryptionConfigurationValue, (value) => value.toMap());
    }
    final diskEncryptionStatusValue = diskEncryptionStatus;
    if (diskEncryptionStatusValue != null) {
      map['diskEncryptionStatus'] = Input.mapOptionalInputValue<
              DiskEncryptionStatus2, Map<String, dynamic>>(
          diskEncryptionStatusValue, (value) => value.toMap());
    }
    final endTimeValue = endTime;
    if (endTimeValue != null) {
      map['endTime'] = endTimeValue;
    }
    final enqueuedTimeValue = enqueuedTime;
    if (enqueuedTimeValue != null) {
      map['enqueuedTime'] = enqueuedTimeValue;
    }
    final errorValue = error;
    if (errorValue != null) {
      map['error'] =
          Input.mapOptionalInputValue<OperationError2, Map<String, dynamic>>(
              errorValue, (value) => value.toMap());
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    map['instance'] = instance;
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final selfLinkValue = selfLink;
    if (selfLinkValue != null) {
      map['selfLink'] = selfLinkValue;
    }
    final startTimeValue = startTime;
    if (startTimeValue != null) {
      map['startTime'] = startTimeValue;
    }
    final timeZoneValue = timeZone;
    if (timeZoneValue != null) {
      map['timeZone'] = timeZoneValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = Input.mapOptionalInputValue<BackupRunType2, String>(
          typeValue, (value) => value.value);
    }
    final windowStartTimeValue = windowStartTime;
    if (windowStartTimeValue != null) {
      map['windowStartTime'] = windowStartTimeValue;
    }
    return map;
  }

  factory BackupRunArgs2.fromMap(Map<String, dynamic> map) {
    return BackupRunArgs2(
      backupKind:
          Input.asOptionalInput<BackupRunBackupKind2>(map['backupKind']),
      description: Input.asOptionalInput<String>(map['description']),
      diskEncryptionConfiguration:
          Input.asOptionalInput<DiskEncryptionConfiguration2>(
              map['diskEncryptionConfiguration']),
      diskEncryptionStatus: Input.asOptionalInput<DiskEncryptionStatus2>(
          map['diskEncryptionStatus']),
      endTime: Input.asOptionalInput<String>(map['endTime']),
      enqueuedTime: Input.asOptionalInput<String>(map['enqueuedTime']),
      error: Input.asOptionalInput<OperationError2>(map['error']),
      id: Input.asOptionalInput<String>(map['id']),
      instance: Input.asInput<String>(map['instance']),
      kind: Input.asOptionalInput<String>(map['kind']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      selfLink: Input.asOptionalInput<String>(map['selfLink']),
      startTime: Input.asOptionalInput<String>(map['startTime']),
      timeZone: Input.asOptionalInput<String>(map['timeZone']),
      type: Input.asOptionalInput<BackupRunType2>(map['type']),
      windowStartTime: Input.asOptionalInput<String>(map['windowStartTime']),
    );
  }
}
