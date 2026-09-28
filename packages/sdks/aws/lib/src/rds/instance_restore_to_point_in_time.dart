// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceRestoreToPointInTime {
  /// Date and time to restore from. Value must be a time in Universal Coordinated Time (UTC) format and must be before the latest restorable time for the DB instance. Cannot be specified with `useLatestRestorableTime`.
  final pulumi.Input<String?>? restoreTime;
  /// ARN of the automated backup from which to restore. Required if `sourceDbInstanceIdentifier` or `sourceDbiResourceId` is not specified.
  final pulumi.Input<String?>? sourceDbInstanceAutomatedBackupsArn;
  /// Identifier of the source DB instance from which to restore. Must match the identifier of an existing DB instance. Required if `sourceDbInstanceAutomatedBackupsArn` or `sourceDbiResourceId` is not specified.
  final pulumi.Input<String?>? sourceDbInstanceIdentifier;
  /// Resource ID of the source DB instance from which to restore. Required if `sourceDbInstanceIdentifier` or `sourceDbInstanceAutomatedBackupsArn` is not specified.
  final pulumi.Input<String?>? sourceDbiResourceId;
  /// Boolean value that indicates whether the DB instance is restored from the latest backup time. Defaults to `false`. Cannot be specified with `restoreTime`.
  final pulumi.Input<bool?>? useLatestRestorableTime;

  /// Creates a new [InstanceRestoreToPointInTime].
  /// [restoreTime] Date and time to restore from. Value must be a time in Universal Coordinated Time (UTC) format and must be before the latest restorable time for the DB instance. Cannot be specified with `useLatestRestorableTime`.
  /// [sourceDbInstanceAutomatedBackupsArn] ARN of the automated backup from which to restore. Required if `sourceDbInstanceIdentifier` or `sourceDbiResourceId` is not specified.
  /// [sourceDbInstanceIdentifier] Identifier of the source DB instance from which to restore. Must match the identifier of an existing DB instance. Required if `sourceDbInstanceAutomatedBackupsArn` or `sourceDbiResourceId` is not specified.
  /// [sourceDbiResourceId] Resource ID of the source DB instance from which to restore. Required if `sourceDbInstanceIdentifier` or `sourceDbInstanceAutomatedBackupsArn` is not specified.
  /// [useLatestRestorableTime] Boolean value that indicates whether the DB instance is restored from the latest backup time. Defaults to `false`. Cannot be specified with `restoreTime`.
  const InstanceRestoreToPointInTime({
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
      restoreTime: (() { final guardedValue = map['restoreTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceDbInstanceAutomatedBackupsArn: (() { final guardedValue = map['sourceDbInstanceAutomatedBackupsArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceDbInstanceIdentifier: (() { final guardedValue = map['sourceDbInstanceIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceDbiResourceId: (() { final guardedValue = map['sourceDbiResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useLatestRestorableTime: (() { final guardedValue = map['useLatestRestorableTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
