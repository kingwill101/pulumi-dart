// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_get_dev_box_definition_args_doc}
/// Arguments for getDevBoxDefinition.
/// {@endtemplate}
/// {@macro pulumi_devcenter_get_dev_box_definition_args_doc}
class GetDevBoxDefinitionArgs {
  /// The name of the Dev Box definition.
  final pulumi.Input<String> devBoxDefinitionName;

  /// The name of the devcenter.
  final pulumi.Input<String> devCenterName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDevBoxDefinitionArgs].
  /// [devBoxDefinitionName] The name of the Dev Box definition.
  /// [devCenterName] The name of the devcenter.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDevBoxDefinitionArgs({
    required this.devBoxDefinitionName,
    required this.devCenterName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devBoxDefinitionName': devBoxDefinitionName,
      'devCenterName': devCenterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDevBoxDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetDevBoxDefinitionArgs(
      devBoxDefinitionName: pulumi.Input.fromValue(
        map['devBoxDefinitionName'] as String,
      ),
      devCenterName: pulumi.Input.fromValue(map['devCenterName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
