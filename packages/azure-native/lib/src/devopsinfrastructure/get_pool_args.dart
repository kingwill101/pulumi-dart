// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devopsinfrastructure_get_pool_args_doc}
/// Arguments for getPool.
/// {@endtemplate}
/// {@macro pulumi_devopsinfrastructure_get_pool_args_doc}
class GetPoolArgs {
  /// Name of the pool. It needs to be globally unique.
  final pulumi.Input<String> poolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPoolArgs].
  /// [poolName] Name of the pool. It needs to be globally unique.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetPoolArgs({
    required String poolName,
    required String resourceGroupName,
  }) :
      poolName = pulumi.Input.asInput<String>(poolName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'poolName': poolName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetPoolArgs(
      poolName: map['poolName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

