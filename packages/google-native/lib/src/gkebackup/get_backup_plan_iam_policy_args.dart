// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkebackup_v1_get_backup_plan_iam_policy_args_doc}
/// Arguments for getBackupPlanIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_gkebackup_v1_get_backup_plan_iam_policy_args_doc}
class GetBackupPlanIamPolicyArgs {
  final pulumi.Input<String> backupPlanId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBackupPlanIamPolicyArgs].
  /// [backupPlanId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetBackupPlanIamPolicyArgs({
    required String backupPlanId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  }) : backupPlanId = pulumi.Input.asInput<String>(backupPlanId),
       location = pulumi.Input.asInput<String>(location),
       optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPlanId': backupPlanId,
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
    };
  }

  factory GetBackupPlanIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupPlanIamPolicyArgs(
      backupPlanId: map['backupPlanId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
