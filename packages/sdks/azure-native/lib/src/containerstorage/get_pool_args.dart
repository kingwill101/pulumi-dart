// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerstorage_get_pool_args_doc}
/// Arguments for getPool.
/// {@endtemplate}
/// {@macro pulumi_containerstorage_get_pool_args_doc}
class GetPoolArgs {
  /// Pool Object
  final pulumi.Input<String> poolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPoolArgs].
  /// [poolName] Pool Object
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetPoolArgs({
    required pulumi.Output<String> poolName,
    required pulumi.Output<String> resourceGroupName,
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
      poolName: pulumi.Output.create<String>(map['poolName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

