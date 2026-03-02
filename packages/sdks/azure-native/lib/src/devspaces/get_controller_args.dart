// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devspaces_get_controller_args_doc}
/// Arguments for getController.
/// {@endtemplate}
/// {@macro pulumi_devspaces_get_controller_args_doc}
class GetControllerArgs {
  /// Name of the resource.
  final pulumi.Input<String> name;
  /// Resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetControllerArgs].
  /// [name] Name of the resource.
  /// [resourceGroupName] Resource group to which the resource belongs.
  GetControllerArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetControllerArgs.fromMap(Map<String, dynamic> map) {
    return GetControllerArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

