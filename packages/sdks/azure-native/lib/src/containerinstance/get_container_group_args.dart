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
    required pulumi.Output<String> containerGroupName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      containerGroupName = pulumi.Input.asInput<String>(containerGroupName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerGroupName': containerGroupName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetContainerGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetContainerGroupArgs(
      containerGroupName: pulumi.Output.create<String>(map['containerGroupName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

