// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_efs_mount_target_args_doc}
/// Arguments for getEfsMountTarget.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_efs_mount_target_args_doc}
class GetEfsMountTargetArgs {
  /// Name of EfsMountTarget
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEfsMountTargetArgs].
  /// [name] Name of EfsMountTarget
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetEfsMountTargetArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEfsMountTargetArgs.fromMap(Map<String, dynamic> map) {
    return GetEfsMountTargetArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
