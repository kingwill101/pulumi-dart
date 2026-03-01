// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_get_pool_args_doc}
/// Arguments for getPool.
/// {@endtemplate}
/// {@macro pulumi_devcenter_get_pool_args_doc}
class GetPoolArgs {
  /// Name of the pool.
  final pulumi.Input<String> poolName;
  /// The name of the project.
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPoolArgs].
  /// [poolName] Name of the pool.
  /// [projectName] The name of the project.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetPoolArgs({
    required pulumi.Output<String> poolName,
    required pulumi.Output<String> projectName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      poolName = pulumi.Input.asInput<String>(poolName),
      projectName = pulumi.Input.asInput<String>(projectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'poolName': poolName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetPoolArgs(
      poolName: pulumi.Output.create<String>(map['poolName'] as String),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

