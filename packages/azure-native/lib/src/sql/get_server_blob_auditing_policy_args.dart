// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_server_blob_auditing_policy_args_doc}
/// Arguments for getServerBlobAuditingPolicy.
/// {@endtemplate}
/// {@macro pulumi_sql_get_server_blob_auditing_policy_args_doc}
class GetServerBlobAuditingPolicyArgs {
  /// The name of the blob auditing policy.
  final pulumi.Input<String> blobAuditingPolicyName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetServerBlobAuditingPolicyArgs].
  /// [blobAuditingPolicyName] The name of the blob auditing policy.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  GetServerBlobAuditingPolicyArgs({
    required String blobAuditingPolicyName,
    required String resourceGroupName,
    required String serverName,
  }) :
      blobAuditingPolicyName = pulumi.Input.asInput<String>(blobAuditingPolicyName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobAuditingPolicyName': blobAuditingPolicyName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetServerBlobAuditingPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetServerBlobAuditingPolicyArgs(
      blobAuditingPolicyName: map['blobAuditingPolicyName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serverName: map['serverName'] as String,
    );
  }
}

