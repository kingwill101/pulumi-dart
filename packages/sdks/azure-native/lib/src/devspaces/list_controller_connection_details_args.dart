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
    required this.name,
    required this.resourceGroupName,
    required this.targetContainerHostResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'targetContainerHostResourceId': targetContainerHostResourceId,
    };
  }

  factory ListControllerConnectionDetailsArgs.fromMap(Map<String, dynamic> map) {
    return ListControllerConnectionDetailsArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      targetContainerHostResourceId: (map['targetContainerHostResourceId'] as String).input(),
    );
  }
}

