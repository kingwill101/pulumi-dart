// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RdsInstanceCrossBackupPolicy resources.
class RdsInstanceCrossBackupPolicyState {
  /// The status of the overall cross-region backup switch on the instance. Valid values:
  /// - Disabled
  /// - Enable
  final pulumi.Input<String>? backupEnabled;
  /// The time when cross-region backup was enabled on the instance. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  final pulumi.Input<String>? backupEnabledTime;
  /// The ID of the destination region where the cross-region backup files of the instance are stored.
  final pulumi.Input<String>? crossBackupRegion;
  /// The policy that is used to save cross-region backups of the instance. Default value: 1. The default value 1 indicates that all cross-region backups are saved.
  final pulumi.Input<String>? crossBackupType;
  /// The state of the instance. For more information, see Instance status.
  final pulumi.Input<String>? dbInstanceStatus;
  /// The ID of the instance.
  final pulumi.Input<String>? instanceId;
  /// The lock status of the instance. Valid values:
  /// - Unlock: The instance is not locked.
  /// - ManualLock: The instance is manually locked.
  /// - LockByExpiration: The instance is locked upon expiration.
  /// - LockByRestoration: The instance is automatically locked before a rollback.
  /// - LockByDiskQuota: The instance is automatically locked because its storage space is exhausted. In this situation, the instance is inaccessible.
  final pulumi.Input<String>? lockMode;
  /// The status of the cross-region log backup feature on the instance. Valid values:
  /// - Enable: Enables the feature.
  /// - Disabled: Disables the feature.
  final pulumi.Input<String>? logBackupEnabled;
  /// The time when cross-region log backup was enabled on the instance. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  final pulumi.Input<String>? logBackupEnabledTime;
  /// The policy that is used to retain cross-region backups of the instance. Default value: 1. The default value 1 indicate that cross-region backups are retained based on the specified retention period.
  final pulumi.Input<String>? retentType;
  /// The number of days for which the cross-region backup files of the instance are retained. Valid values: 7 to 1825. Default value: 7.
  final pulumi.Input<int>? retention;

  /// Creates a new [RdsInstanceCrossBackupPolicyState].
  /// [backupEnabled] The status of the overall cross-region backup switch on the instance. Valid values:
  /// [backupEnabledTime] The time when cross-region backup was enabled on the instance. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  /// [crossBackupRegion] The ID of the destination region where the cross-region backup files of the instance are stored.
  /// [crossBackupType] The policy that is used to save cross-region backups of the instance. Default value: 1. The default value 1 indicates that all cross-region backups are saved.
  /// [dbInstanceStatus] The state of the instance. For more information, see Instance status.
  /// [instanceId] The ID of the instance.
  /// [lockMode] The lock status of the instance. Valid values:
  /// [logBackupEnabled] The status of the cross-region log backup feature on the instance. Valid values:
  /// [logBackupEnabledTime] The time when cross-region log backup was enabled on the instance. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  /// [retentType] The policy that is used to retain cross-region backups of the instance. Default value: 1. The default value 1 indicate that cross-region backups are retained based on the specified retention period.
  /// [retention] The number of days for which the cross-region backup files of the instance are retained. Valid values: 7 to 1825. Default value: 7.
  RdsInstanceCrossBackupPolicyState({
    pulumi.Output<String>? backupEnabled,
    pulumi.Output<String>? backupEnabledTime,
    pulumi.Output<String>? crossBackupRegion,
    pulumi.Output<String>? crossBackupType,
    pulumi.Output<String>? dbInstanceStatus,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? lockMode,
    pulumi.Output<String>? logBackupEnabled,
    pulumi.Output<String>? logBackupEnabledTime,
    pulumi.Output<String>? retentType,
    pulumi.Output<int>? retention,
  }) :
      backupEnabled = pulumi.Input.asOptionalInput<String>(backupEnabled),
      backupEnabledTime = pulumi.Input.asOptionalInput<String>(backupEnabledTime),
      crossBackupRegion = pulumi.Input.asOptionalInput<String>(crossBackupRegion),
      crossBackupType = pulumi.Input.asOptionalInput<String>(crossBackupType),
      dbInstanceStatus = pulumi.Input.asOptionalInput<String>(dbInstanceStatus),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      lockMode = pulumi.Input.asOptionalInput<String>(lockMode),
      logBackupEnabled = pulumi.Input.asOptionalInput<String>(logBackupEnabled),
      logBackupEnabledTime = pulumi.Input.asOptionalInput<String>(logBackupEnabledTime),
      retentType = pulumi.Input.asOptionalInput<String>(retentType),
      retention = pulumi.Input.asOptionalInput<int>(retention);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupEnabled': ?backupEnabled,
      'backupEnabledTime': ?backupEnabledTime,
      'crossBackupRegion': ?crossBackupRegion,
      'crossBackupType': ?crossBackupType,
      'dbInstanceStatus': ?dbInstanceStatus,
      'instanceId': ?instanceId,
      'lockMode': ?lockMode,
      'logBackupEnabled': ?logBackupEnabled,
      'logBackupEnabledTime': ?logBackupEnabledTime,
      'retentType': ?retentType,
      'retention': ?retention,
    };
  }

  factory RdsInstanceCrossBackupPolicyState.fromMap(Map<String, dynamic> map) {
    return RdsInstanceCrossBackupPolicyState(
      backupEnabled: map['backupEnabled'] == null ? null : pulumi.Output.create<String>(map['backupEnabled'] as String),
      backupEnabledTime: map['backupEnabledTime'] == null ? null : pulumi.Output.create<String>(map['backupEnabledTime'] as String),
      crossBackupRegion: map['crossBackupRegion'] == null ? null : pulumi.Output.create<String>(map['crossBackupRegion'] as String),
      crossBackupType: map['crossBackupType'] == null ? null : pulumi.Output.create<String>(map['crossBackupType'] as String),
      dbInstanceStatus: map['dbInstanceStatus'] == null ? null : pulumi.Output.create<String>(map['dbInstanceStatus'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      lockMode: map['lockMode'] == null ? null : pulumi.Output.create<String>(map['lockMode'] as String),
      logBackupEnabled: map['logBackupEnabled'] == null ? null : pulumi.Output.create<String>(map['logBackupEnabled'] as String),
      logBackupEnabledTime: map['logBackupEnabledTime'] == null ? null : pulumi.Output.create<String>(map['logBackupEnabledTime'] as String),
      retentType: map['retentType'] == null ? null : pulumi.Output.create<String>(map['retentType'] as String),
      retention: map['retention'] == null ? null : pulumi.Output.create<int>(map['retention'] as int),
    );
  }
}

