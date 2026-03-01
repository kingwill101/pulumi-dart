// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_get_elastic_capacity_pool_args_doc}
/// Arguments for getElasticCapacityPool.
/// {@endtemplate}
/// {@macro pulumi_netapp_get_elastic_capacity_pool_args_doc}
class GetElasticCapacityPoolArgs {
  /// The name of the ElasticAccount
  final pulumi.Input<String> accountName;
  /// The name of the ElasticCapacityPool
  final pulumi.Input<String> poolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetElasticCapacityPoolArgs].
  /// [accountName] The name of the ElasticAccount
  /// [poolName] The name of the ElasticCapacityPool
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetElasticCapacityPoolArgs({
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

  factory GetElasticCapacityPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetElasticCapacityPoolArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      poolName: pulumi.Output.create<String>(map['poolName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

