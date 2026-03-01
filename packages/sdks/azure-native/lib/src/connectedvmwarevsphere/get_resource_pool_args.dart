// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connectedvmwarevsphere_get_resource_pool_args_doc}
/// Arguments for getResourcePool.
/// {@endtemplate}
/// {@macro pulumi_connectedvmwarevsphere_get_resource_pool_args_doc}
class GetResourcePoolArgs {
  /// The Resource Group Name.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the resourcePool.
  final pulumi.Input<String> resourcePoolName;

  /// Creates a new [GetResourcePoolArgs].
  /// [resourceGroupName] The Resource Group Name.
  /// [resourcePoolName] Name of the resourcePool.
  GetResourcePoolArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourcePoolName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourcePoolName = pulumi.Input.asInput<String>(resourcePoolName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourcePoolName': resourcePoolName,
    };
  }

  factory GetResourcePoolArgs.fromMap(Map<String, dynamic> map) {
    return GetResourcePoolArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourcePoolName: pulumi.Output.create<String>(map['resourcePoolName'] as String),
    );
  }
}

