// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_get_capacity_pool_args_doc}
/// Arguments for getCapacityPool.
/// {@endtemplate}
/// {@macro pulumi_netapp_get_capacity_pool_args_doc}
class GetCapacityPoolArgs {
  /// The name of the NetApp account
  final pulumi.Input<String> accountName;
  /// The name of the capacity pool
  final pulumi.Input<String> poolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCapacityPoolArgs].
  /// [accountName] The name of the NetApp account
  /// [poolName] The name of the capacity pool
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetCapacityPoolArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> poolName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      poolName = pulumi.Input.asInput<String>(poolName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'poolName': poolName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCapacityPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetCapacityPoolArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      poolName: pulumi.Output.create<String>(map['poolName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

