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
    required this.resourceGroupName,
    required this.resourcePoolName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourcePoolName': resourcePoolName,
    };
  }

  factory GetResourcePoolArgs.fromMap(Map<String, dynamic> map) {
    return GetResourcePoolArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourcePoolName: (map['resourcePoolName'] as String).input(),
    );
  }
}

