// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerinstance_get_container_group_args_doc}
/// Arguments for getContainerGroup.
/// {@endtemplate}
/// {@macro pulumi_containerinstance_get_container_group_args_doc}
class GetContainerGroupArgs {
  /// The name of the container group.
  final pulumi.Input<String> containerGroupName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetContainerGroupArgs].
  /// [containerGroupName] The name of the container group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetContainerGroupArgs({
    required this.containerGroupName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerGroupName': containerGroupName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetContainerGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetContainerGroupArgs(
      containerGroupName: pulumi.Input.fromValue(map['containerGroupName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

