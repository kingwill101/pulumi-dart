// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceRestoreToPointInTime {
  /// The date and time to restore from. Value must be a time in Universal Coordinated Time (UTC) format and must be before the latest restorable time for the DB instance. Cannot be specified with `use_latest_restorable_time`.
  final pulumi.Input<String>? restoreTime;
  /// The ARN of the automated backup from which to restore. Required if `source_db_instance_identifier` or `source_dbi_resource_id` is not specified.
  final pulumi.Input<String>? sourceDbInstanceAutomatedBackupsArn;
  /// The identifier of the source DB instance from which to restore. Must match the identifier of an existing DB instance. Required if `source_db_instance_automated_backups_arn` or `source_dbi_resource_id` is not specified.
  final pulumi.Input<String>? sourceDbInstanceIdentifier;
  /// The resource ID of the source DB instance from which to restore. Required if `source_db_instance_identifier` or `source_db_instance_automated_backups_arn` is not specified.
  final pulumi.Input<String>? sourceDbiResourceId;
  /// A boolean value that indicates whether the DB instance is restored from the latest backup time. Defaults to `false`. Cannot be specified with `restore_time`.
  final pulumi.Input<bool>? useLatestRestorableTime;

  /// Creates a new [InstanceRestoreToPointInTime].
  /// [restoreTime] The date and time to restore from. Value must be a time in Universal Coordinated Time (UTC) format and must be before the latest restorable time for the DB instance. Cannot be specified with `use_latest_restorable_time`.
  /// [sourceDbInstanceAutomatedBackupsArn] The ARN of the automated backup from which to restore. Required if `source_db_instance_identifier` or `source_dbi_resource_id` is not specified.
  /// [sourceDbInstanceIdentifier] The identifier of the source DB instance from which to restore. Must match the identifier of an existing DB instance. Required if `source_db_instance_automated_backups_arn` or `source_dbi_resource_id` is not specified.
  /// [sourceDbiResourceId] The resource ID of the source DB instance from which to restore. Required if `source_db_instance_identifier` or `source_db_instance_automated_backups_arn` is not specified.
  /// [useLatestRestorableTime] A boolean value that indicates whether the DB instance is restored from the latest backup time. Defaults to `false`. Cannot be specified with `restore_time`.
  InstanceRestoreToPointInTime({
    this.restoreTime,
    this.sourceDbInstanceAutomatedBackupsArn,
    this.sourceDbInstanceIdentifier,
    this.sourceDbiResourceId,
    this.useLatestRestorableTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'restoreTime': ?restoreTime,
      'sourceDbInstanceAutomatedBackupsArn': ?sourceDbInstanceAutomatedBackupsArn,
      'sourceDbInstanceIdentifier': ?sourceDbInstanceIdentifier,
      'sourceDbiResourceId': ?sourceDbiResourceId,
      'useLatestRestorableTime': ?useLatestRestorableTime,
    };
  }

  factory InstanceRestoreToPointInTime.fromMap(Map<String, dynamic> map) {
    return InstanceRestoreToPointInTime(
      restoreTime: map['restoreTime'] == null ? null : (map['restoreTime'] as String).input(),
      sourceDbInstanceAutomatedBackupsArn: map['sourceDbInstanceAutomatedBackupsArn'] == null ? null : (map['sourceDbInstanceAutomatedBackupsArn'] as String).input(),
      sourceDbInstanceIdentifier: map['sourceDbInstanceIdentifier'] == null ? null : (map['sourceDbInstanceIdentifier'] as String).input(),
      sourceDbiResourceId: map['sourceDbiResourceId'] == null ? null : (map['sourceDbiResourceId'] as String).input(),
      useLatestRestorableTime: map['useLatestRestorableTime'] == null ? null : (map['useLatestRestorableTime'] as bool).input(),
    );
  }
}

