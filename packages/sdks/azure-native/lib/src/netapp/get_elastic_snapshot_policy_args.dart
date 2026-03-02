// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_get_elastic_snapshot_policy_args_doc}
/// Arguments for getElasticSnapshotPolicy.
/// {@endtemplate}
/// {@macro pulumi_netapp_get_elastic_snapshot_policy_args_doc}
class GetElasticSnapshotPolicyArgs {
  /// The name of the ElasticAccount
  final pulumi.Input<String> accountName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the ElasticSnapshotPolicy
  final pulumi.Input<String> snapshotPolicyName;

  /// Creates a new [GetElasticSnapshotPolicyArgs].
  /// [accountName] The name of the ElasticAccount
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [snapshotPolicyName] The name of the ElasticSnapshotPolicy
  GetElasticSnapshotPolicyArgs({
    required this.accountName,
    required this.resourceGroupName,
    required this.snapshotPolicyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'resourceGroupName': resourceGroupName,
      'snapshotPolicyName': snapshotPolicyName,
    };
  }

  factory GetElasticSnapshotPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetElasticSnapshotPolicyArgs(
      accountName: (map['accountName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      snapshotPolicyName: (map['snapshotPolicyName'] as String).input(),
    );
  }
}

