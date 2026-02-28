// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_spanner_v1_get_instance_backup_iam_policy_args_doc}
/// Arguments for getInstanceBackupIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_spanner_v1_get_instance_backup_iam_policy_args_doc}
class GetInstanceBackupIamPolicyArgs {
  final pulumi.Input<String> backupId;
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetInstanceBackupIamPolicyArgs].
  /// [backupId] Required.
  /// [instanceId] Required.
  /// [project] Optional.
  GetInstanceBackupIamPolicyArgs({
    required String backupId,
    required String instanceId,
    String? project,
  }) :
      backupId = pulumi.Input.asInput<String>(backupId),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupId': backupId,
      'instanceId': instanceId,
      'project': ?project,
    };
  }

  factory GetInstanceBackupIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceBackupIamPolicyArgs(
      backupId: map['backupId'] as String,
      instanceId: map['instanceId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

