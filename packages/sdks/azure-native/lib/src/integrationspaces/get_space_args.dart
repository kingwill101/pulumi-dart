// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_integrationspaces_get_space_args_doc}
/// Arguments for getSpace.
/// {@endtemplate}
/// {@macro pulumi_integrationspaces_get_space_args_doc}
class GetSpaceArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the space
  final pulumi.Input<String> spaceName;

  /// Creates a new [GetSpaceArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [spaceName] The name of the space
  const GetSpaceArgs({
    required this.resourceGroupName,
    required this.spaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'spaceName': spaceName,
    };
  }

  factory GetSpaceArgs.fromMap(Map<String, dynamic> map) {
    return GetSpaceArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      spaceName: pulumi.Input.fromValue(map['spaceName'] as String),
    );
  }
}

