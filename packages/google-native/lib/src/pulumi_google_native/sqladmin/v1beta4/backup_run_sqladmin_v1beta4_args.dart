// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_run_backup_kind_sqladmin_v1beta4.dart';
import 'backup_run_type_sqladmin_v1beta4.dart';
import 'disk_encryption_configuration_sqladmin_v1beta4.dart';
import 'disk_encryption_status_sqladmin_v1beta4.dart';
import 'operation_error_sqladmin_v1beta4.dart';

/// The set of arguments for BackupRun.
class BackupRunSqladminV1beta4Args {
  /// Specifies the kind of backup, PHYSICAL or DEFAULT_SNAPSHOT.
  final pulumi.Input<BackupRunBackupKindSqladminV1beta4>? backupKind;

  /// The description of this run, only applicable to on-demand backups.
  final pulumi.Input<String>? description;

  /// Encryption configuration specific to a backup.
  final pulumi.Input<DiskEncryptionConfigurationSqladminV1beta4>?
      diskEncryptionConfiguration;

  /// Encryption status specific to a backup.
  final pulumi.Input<DiskEncryptionStatusSqladminV1beta4>? diskEncryptionStatus;

  /// The time the backup operation completed in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final pulumi.Input<String>? endTime;

  /// The time the run was enqueued in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final pulumi.Input<String>? enqueuedTime;

  /// Information about why the backup operation failed. This is only present if the run has the FAILED status.
  final pulumi.Input<OperationErrorSqladminV1beta4>? error;

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
  final pulumi.Input<BackupRunTypeSqladminV1beta4>? type;

  /// The start time of the backup window during which this the backup was attempted in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  final pulumi.Input<String>? windowStartTime;

  BackupRunSqladminV1beta4Args({
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
      map['backupKind'] = pulumi.Input.mapOptionalInputValue<
          BackupRunBackupKindSqladminV1beta4,
          String>(backupKindValue, (value) => value.value);
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final diskEncryptionConfigurationValue = diskEncryptionConfiguration;
    if (diskEncryptionConfigurationValue != null) {
      map['diskEncryptionConfiguration'] = pulumi.Input.mapOptionalInputValue<
              DiskEncryptionConfigurationSqladminV1beta4, Map<String, dynamic>>(
          diskEncryptionConfigurationValue, (value) => value.toMap());
    }
    final diskEncryptionStatusValue = diskEncryptionStatus;
    if (diskEncryptionStatusValue != null) {
      map['diskEncryptionStatus'] = pulumi.Input.mapOptionalInputValue<
              DiskEncryptionStatusSqladminV1beta4, Map<String, dynamic>>(
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
      map['error'] = pulumi.Input.mapOptionalInputValue<
          OperationErrorSqladminV1beta4,
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
      map['type'] = pulumi.Input.mapOptionalInputValue<
          BackupRunTypeSqladminV1beta4,
          String>(typeValue, (value) => value.value);
    }
    final windowStartTimeValue = windowStartTime;
    if (windowStartTimeValue != null) {
      map['windowStartTime'] = windowStartTimeValue;
    }
    return map;
  }

  factory BackupRunSqladminV1beta4Args.fromMap(Map<String, dynamic> map) {
    return BackupRunSqladminV1beta4Args(
      backupKind:
          pulumi.Input.asOptionalInput<BackupRunBackupKindSqladminV1beta4>(
              map['backupKind']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      diskEncryptionConfiguration: pulumi.Input.asOptionalInput<
              DiskEncryptionConfigurationSqladminV1beta4>(
          map['diskEncryptionConfiguration']),
      diskEncryptionStatus:
          pulumi.Input.asOptionalInput<DiskEncryptionStatusSqladminV1beta4>(
              map['diskEncryptionStatus']),
      endTime: pulumi.Input.asOptionalInput<String>(map['endTime']),
      enqueuedTime: pulumi.Input.asOptionalInput<String>(map['enqueuedTime']),
      error: pulumi.Input.asOptionalInput<OperationErrorSqladminV1beta4>(
          map['error']),
      id: pulumi.Input.asOptionalInput<String>(map['id']),
      instance: pulumi.Input.asInput<String>(map['instance']),
      kind: pulumi.Input.asOptionalInput<String>(map['kind']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      selfLink: pulumi.Input.asOptionalInput<String>(map['selfLink']),
      startTime: pulumi.Input.asOptionalInput<String>(map['startTime']),
      timeZone: pulumi.Input.asOptionalInput<String>(map['timeZone']),
      type: pulumi.Input.asOptionalInput<BackupRunTypeSqladminV1beta4>(
          map['type']),
      windowStartTime:
          pulumi.Input.asOptionalInput<String>(map['windowStartTime']),
    );
  }
}
