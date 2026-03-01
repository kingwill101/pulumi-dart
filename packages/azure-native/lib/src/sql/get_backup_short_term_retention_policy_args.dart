// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_backup_short_term_retention_policy_args_doc}
/// Arguments for getBackupShortTermRetentionPolicy.
/// {@endtemplate}
/// {@macro pulumi_sql_get_backup_short_term_retention_policy_args_doc}
class GetBackupShortTermRetentionPolicyArgs {
  /// The name of the database.
  final pulumi.Input<String> databaseName;
  /// The policy name. Should always be "default".
  final pulumi.Input<String> policyName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetBackupShortTermRetentionPolicyArgs].
  /// [databaseName] The name of the database.
  /// [policyName] The policy name. Should always be "default".
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  GetBackupShortTermRetentionPolicyArgs({
    required String databaseName,
    required String policyName,
    required String resourceGroupName,
    required String serverName,
  }) :
      databaseName = pulumi.Input.asInput<String>(databaseName),
      policyName = pulumi.Input.asInput<String>(policyName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'policyName': policyName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetBackupShortTermRetentionPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupShortTermRetentionPolicyArgs(
      databaseName: map['databaseName'] as String,
      policyName: map['policyName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serverName: map['serverName'] as String,
    );
  }
}

