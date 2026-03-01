// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_get_snapshot_policy_args_doc}
/// Arguments for getSnapshotPolicy.
/// {@endtemplate}
/// {@macro pulumi_netapp_get_snapshot_policy_args_doc}
class GetSnapshotPolicyArgs {
  /// The name of the NetApp account
  final pulumi.Input<String> accountName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the snapshot policy
  final pulumi.Input<String> snapshotPolicyName;

  /// Creates a new [GetSnapshotPolicyArgs].
  /// [accountName] The name of the NetApp account
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [snapshotPolicyName] The name of the snapshot policy
  GetSnapshotPolicyArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> snapshotPolicyName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      snapshotPolicyName = pulumi.Input.asInput<String>(snapshotPolicyName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'resourceGroupName': resourceGroupName,
      'snapshotPolicyName': snapshotPolicyName,
    };
  }

  factory GetSnapshotPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetSnapshotPolicyArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      snapshotPolicyName: pulumi.Output.create<String>(map['snapshotPolicyName'] as String),
    );
  }
}

