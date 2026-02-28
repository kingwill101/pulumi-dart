// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkebackup_v1_get_backup_plan_backup_volume_backup_iam_policy_args_doc}
/// Arguments for getBackupPlanBackupVolumeBackupIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_gkebackup_v1_get_backup_plan_backup_volume_backup_iam_policy_args_doc}
class GetBackupPlanBackupVolumeBackupIamPolicyArgs {
  final pulumi.Input<String> backupId;
  final pulumi.Input<String> backupPlanId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> volumeBackupId;

  /// Creates a new [GetBackupPlanBackupVolumeBackupIamPolicyArgs].
  /// [backupId] Required.
  /// [backupPlanId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [volumeBackupId] Required.
  GetBackupPlanBackupVolumeBackupIamPolicyArgs({
    required String backupId,
    required String backupPlanId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
    required String volumeBackupId,
  }) :
      backupId = pulumi.Input.asInput<String>(backupId),
      backupPlanId = pulumi.Input.asInput<String>(backupPlanId),
      location = pulumi.Input.asInput<String>(location),
      optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      volumeBackupId = pulumi.Input.asInput<String>(volumeBackupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupId': backupId,
      'backupPlanId': backupPlanId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'volumeBackupId': volumeBackupId,
    };
  }

  factory GetBackupPlanBackupVolumeBackupIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupPlanBackupVolumeBackupIamPolicyArgs(
      backupId: map['backupId'] as String,
      backupPlanId: map['backupPlanId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion: map['optionsRequestedPolicyVersion'] == null ? null : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      volumeBackupId: map['volumeBackupId'] as String,
    );
  }
}

