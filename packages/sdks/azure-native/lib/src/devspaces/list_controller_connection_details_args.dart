// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devspaces_list_controller_connection_details_args_doc}
/// Arguments for listControllerConnectionDetails.
/// {@endtemplate}
/// {@macro pulumi_devspaces_list_controller_connection_details_args_doc}
class ListControllerConnectionDetailsArgs {
  /// Name of the resource.
  final pulumi.Input<String> name;
  /// Resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Resource ID of the target container host mapped to the Azure Dev Spaces Controller.
  final pulumi.Input<String> targetContainerHostResourceId;

  /// Creates a new [ListControllerConnectionDetailsArgs].
  /// [name] Name of the resource.
  /// [resourceGroupName] Resource group to which the resource belongs.
  /// [targetContainerHostResourceId] Resource ID of the target container host mapped to the Azure Dev Spaces Controller.
  ListControllerConnectionDetailsArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> targetContainerHostResourceId,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      targetContainerHostResourceId = pulumi.Input.asInput<String>(targetContainerHostResourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'targetContainerHostResourceId': targetContainerHostResourceId,
    };
  }

  factory ListControllerConnectionDetailsArgs.fromMap(Map<String, dynamic> map) {
    return ListControllerConnectionDetailsArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      targetContainerHostResourceId: pulumi.Output.create<String>(map['targetContainerHostResourceId'] as String),
    );
  }
}

