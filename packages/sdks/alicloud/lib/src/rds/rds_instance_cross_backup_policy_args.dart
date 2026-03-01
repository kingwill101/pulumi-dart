// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_rds_instance_cross_backup_policy_rds_instance_cross_backup_policy_args_doc}
/// The set of arguments for RdsInstanceCrossBackupPolicy.
/// {@endtemplate}
/// {@macro pulumi_rds_rds_instance_cross_backup_policy_rds_instance_cross_backup_policy_args_doc}
class RdsInstanceCrossBackupPolicyArgs {
  /// The ID of the destination region where the cross-region backup files of the instance are stored.
  final pulumi.Input<String> crossBackupRegion;
  /// The ID of the instance.
  final pulumi.Input<String> instanceId;
  /// The status of the cross-region log backup feature on the instance. Valid values:
  /// - Enable: Enables the feature.
  /// - Disabled: Disables the feature.
  final pulumi.Input<String>? logBackupEnabled;
  /// The number of days for which the cross-region backup files of the instance are retained. Valid values: 7 to 1825. Default value: 7.
  final pulumi.Input<int>? retention;

  /// Creates a new [RdsInstanceCrossBackupPolicyArgs].
  /// [crossBackupRegion] The ID of the destination region where the cross-region backup files of the instance are stored.
  /// [instanceId] The ID of the instance.
  /// [logBackupEnabled] The status of the cross-region log backup feature on the instance. Valid values:
  /// [retention] The number of days for which the cross-region backup files of the instance are retained. Valid values: 7 to 1825. Default value: 7.
  RdsInstanceCrossBackupPolicyArgs({
    required pulumi.Output<String> crossBackupRegion,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? logBackupEnabled,
    pulumi.Output<int>? retention,
  }) :
      crossBackupRegion = pulumi.Input.asInput<String>(crossBackupRegion),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      logBackupEnabled = pulumi.Input.asOptionalInput<String>(logBackupEnabled),
      retention = pulumi.Input.asOptionalInput<int>(retention);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossBackupRegion': crossBackupRegion,
      'instanceId': instanceId,
      'logBackupEnabled': ?logBackupEnabled,
      'retention': ?retention,
    };
  }

  factory RdsInstanceCrossBackupPolicyArgs.fromMap(Map<String, dynamic> map) {
    return RdsInstanceCrossBackupPolicyArgs(
      crossBackupRegion: pulumi.Output.create<String>(map['crossBackupRegion'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      logBackupEnabled: map['logBackupEnabled'] == null ? null : pulumi.Output.create<String>(map['logBackupEnabled'] as String),
      retention: map['retention'] == null ? null : pulumi.Output.create<int>(map['retention'] as int),
    );
  }
}

