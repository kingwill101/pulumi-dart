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
  GetSpaceArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> spaceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      spaceName = pulumi.Input.asInput<String>(spaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'spaceName': spaceName,
    };
  }

  factory GetSpaceArgs.fromMap(Map<String, dynamic> map) {
    return GetSpaceArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      spaceName: pulumi.Output.create<String>(map['spaceName'] as String),
    );
  }
}

