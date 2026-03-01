// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigtableadmin_v2_get_instance_cluster_backup_iam_policy_args_doc}
/// Arguments for getInstanceClusterBackupIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_bigtableadmin_v2_get_instance_cluster_backup_iam_policy_args_doc}
class GetInstanceClusterBackupIamPolicyArgs {
  final pulumi.Input<String> backupId;
  final pulumi.Input<String> clusterId;
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetInstanceClusterBackupIamPolicyArgs].
  /// [backupId] Required.
  /// [clusterId] Required.
  /// [instanceId] Required.
  /// [project] Optional.
  GetInstanceClusterBackupIamPolicyArgs({
    required String backupId,
    required String clusterId,
    required String instanceId,
    String? project,
  }) : backupId = pulumi.Input.asInput<String>(backupId),
       clusterId = pulumi.Input.asInput<String>(clusterId),
       instanceId = pulumi.Input.asInput<String>(instanceId),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupId': backupId,
      'clusterId': clusterId,
      'instanceId': instanceId,
      'project': ?project,
    };
  }

  factory GetInstanceClusterBackupIamPolicyArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetInstanceClusterBackupIamPolicyArgs(
      backupId: map['backupId'] as String,
      clusterId: map['clusterId'] as String,
      instanceId: map['instanceId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
