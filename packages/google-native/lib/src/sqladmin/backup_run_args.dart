// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_run_backup_kind.dart';
import 'backup_run_type.dart';
import 'disk_encryption_configuration.dart';
import 'disk_encryption_status.dart';
import 'operation_error.dart';

/// {@template pulumi_sqladmin_v1_backup_run_args_doc}
/// The set of arguments for BackupRun.
/// {@endtemplate}
/// {@macro pulumi_sqladmin_v1_backup_run_args_doc}
class BackupRunArgs {
  /// Specifies the kind of backup, PHYSICAL or DEFAULT_SNAPSHOT.
  final pulumi.Input<BackupRunBackupKind>? backupKind;

  /// The description of this run, only applicable to on-demand backups.
  final pulumi.Input<String>? description;

  /// Encryption configuration specific to a backup.
  final pulumi.Input<DiskEncryptionConfiguration>? diskEncryptionConfiguration;

  /// Encryption status specific to a backup.
  final pulumi.Input<DiskEncryptionStatus>? diskEncryptionStatus;

  /// The time the backup operation completed in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final pulumi.Input<String>? endTime;

  /// The time the run was enqueued in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final pulumi.Input<String>? enqueuedTime;

  /// Information about why the backup operation failed. This is only present if the run has the FAILED status.
  final pulumi.Input<OperationError>? error;

  /// The identifier for this backup run. Unique only for a specific Cloud SQL instance.
  final pulumi.Input<String>? id;

  /// Name of the database instance.
  final pulumi.Input<String> instance;

  /// This is always `sql#backupRun`.
  final pulumi.Input<String>? kind;

  /// Location of the backups.
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// The URI of this resource.
  final pulumi.Input<String>? selfLink;

  /// The time the backup operation actually started in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final pulumi.Input<String>? startTime;

  /// Backup time zone to prevent restores to an instance with a different time zone. Now relevant only for SQL Server.
  final pulumi.Input<String>? timeZone;

  /// The type of this run; can be either "AUTOMATED" or "ON_DEMAND" or "FINAL". This field defaults to "ON_DEMAND" and is ignored, when specified for insert requests.
  final pulumi.Input<BackupRunType>? type;

  /// The start time of the backup window during which this the backup was attempted in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final pulumi.Input<String>? windowStartTime;

  /// Creates a new [BackupRunArgs].
  /// [backupKind] Specifies the kind of backup, PHYSICAL or DEFAULT_SNAPSHOT.
  /// [description] The description of this run, only applicable to on-demand backups.
  /// [diskEncryptionConfiguration] Encryption configuration specific to a backup.
  /// [diskEncryptionStatus] Encryption status specific to a backup.
  /// [endTime] The time the backup operation completed in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  /// [enqueuedTime] The time the run was enqueued in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  /// [error] Information about why the backup operation failed. This is only present if the run has the FAILED status.
  /// [id] The identifier for this backup run. Unique only for a specific Cloud SQL instance.
  /// [instance] Name of the database instance.
  /// [kind] This is always `sql#backupRun`.
  /// [location] Location of the backups.
  /// [project] Optional.
  /// [selfLink] The URI of this resource.
  /// [startTime] The time the backup operation actually started in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  /// [timeZone] Backup time zone to prevent restores to an instance with a different time zone. Now relevant only for SQL Server.
  /// [type] The type of this run; can be either "AUTOMATED" or "ON_DEMAND" or "FINAL". This field defaults to "ON_DEMAND" and is ignored, when specified for insert requests.
  /// [windowStartTime] The start time of the backup window during which this the backup was attempted in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  BackupRunArgs({
    BackupRunBackupKind? backupKind,
    String? description,
    DiskEncryptionConfiguration? diskEncryptionConfiguration,
    DiskEncryptionStatus? diskEncryptionStatus,
    String? endTime,
    String? enqueuedTime,
    OperationError? error,
    String? id,
    required String instance,
    String? kind,
    String? location,
    String? project,
    String? selfLink,
    String? startTime,
    String? timeZone,
    BackupRunType? type,
    String? windowStartTime,
  })  : backupKind =
            pulumi.Input.asOptionalInput<BackupRunBackupKind>(backupKind),
        description = pulumi.Input.asOptionalInput<String>(description),
        diskEncryptionConfiguration =
            pulumi.Input.asOptionalInput<DiskEncryptionConfiguration>(
                diskEncryptionConfiguration),
        diskEncryptionStatus =
            pulumi.Input.asOptionalInput<DiskEncryptionStatus>(
                diskEncryptionStatus),
        endTime = pulumi.Input.asOptionalInput<String>(endTime),
        enqueuedTime = pulumi.Input.asOptionalInput<String>(enqueuedTime),
        error = pulumi.Input.asOptionalInput<OperationError>(error),
        id = pulumi.Input.asOptionalInput<String>(id),
        instance = pulumi.Input.asInput<String>(instance),
        kind = pulumi.Input.asOptionalInput<String>(kind),
        location = pulumi.Input.asOptionalInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
        startTime = pulumi.Input.asOptionalInput<String>(startTime),
        timeZone = pulumi.Input.asOptionalInput<String>(timeZone),
        type = pulumi.Input.asOptionalInput<BackupRunType>(type),
        windowStartTime = pulumi.Input.asOptionalInput<String>(windowStartTime);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final backupKindValue = backupKind;
    if (backupKindValue != null) {
      map['backupKind'] =
          pulumi.Input.mapOptionalInputValue<BackupRunBackupKind, String>(
              backupKindValue, (value) => value.value);
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final diskEncryptionConfigurationValue = diskEncryptionConfiguration;
    if (diskEncryptionConfigurationValue != null) {
      map['diskEncryptionConfiguration'] = pulumi.Input.mapOptionalInputValue<
              DiskEncryptionConfiguration, Map<String, dynamic>>(
          diskEncryptionConfigurationValue, (value) => value.toMap());
    }
    final diskEncryptionStatusValue = diskEncryptionStatus;
    if (diskEncryptionStatusValue != null) {
      map['diskEncryptionStatus'] = pulumi.Input.mapOptionalInputValue<
              DiskEncryptionStatus, Map<String, dynamic>>(
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
      map['error'] = pulumi.Input.mapOptionalInputValue<OperationError,
          Map<String, dynamic>>(errorValue, (value) => value.toMap());
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
      map['type'] = pulumi.Input.mapOptionalInputValue<BackupRunType, String>(
          typeValue, (value) => value.value);
    }
    final windowStartTimeValue = windowStartTime;
    if (windowStartTimeValue != null) {
      map['windowStartTime'] = windowStartTimeValue;
    }
    return map;
  }

  factory BackupRunArgs.fromMap(Map<String, dynamic> map) {
    return BackupRunArgs(
      backupKind: map['backupKind'] == null
          ? null
          : BackupRunBackupKind.fromValue(map['backupKind'] as String),
      description:
          map['description'] == null ? null : map['description'] as String,
      diskEncryptionConfiguration: map['diskEncryptionConfiguration'] == null
          ? null
          : DiskEncryptionConfiguration.fromMap(
              (map['diskEncryptionConfiguration'] as Map)
                  .cast<String, dynamic>()),
      diskEncryptionStatus: map['diskEncryptionStatus'] == null
          ? null
          : DiskEncryptionStatus.fromMap(
              (map['diskEncryptionStatus'] as Map).cast<String, dynamic>()),
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      enqueuedTime:
          map['enqueuedTime'] == null ? null : map['enqueuedTime'] as String,
      error: map['error'] == null
          ? null
          : OperationError.fromMap(
              (map['error'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      instance: map['instance'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      selfLink: map['selfLink'] == null ? null : map['selfLink'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
      type: map['type'] == null
          ? null
          : BackupRunType.fromValue(map['type'] as String),
      windowStartTime: map['windowStartTime'] == null
          ? null
          : map['windowStartTime'] as String,
    );
  }
}
