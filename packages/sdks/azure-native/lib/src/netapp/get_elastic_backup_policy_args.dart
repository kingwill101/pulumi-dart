// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_get_elastic_backup_policy_args_doc}
/// Arguments for getElasticBackupPolicy.
/// {@endtemplate}
/// {@macro pulumi_netapp_get_elastic_backup_policy_args_doc}
class GetElasticBackupPolicyArgs {
  /// The name of the ElasticAccount
  final pulumi.Input<String> accountName;
  /// The name of the ElasticBackupPolicy
  final pulumi.Input<String> backupPolicyName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetElasticBackupPolicyArgs].
  /// [accountName] The name of the ElasticAccount
  /// [backupPolicyName] The name of the ElasticBackupPolicy
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetElasticBackupPolicyArgs({
    required this.accountName,
    required this.backupPolicyName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'backupPolicyName': backupPolicyName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetElasticBackupPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetElasticBackupPolicyArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      backupPolicyName: pulumi.Input.fromValue(map['backupPolicyName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

