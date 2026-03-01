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
    required String devBoxDefinitionName,
    required String devCenterName,
    required String resourceGroupName,
  }) :
      devBoxDefinitionName = pulumi.Input.asInput<String>(devBoxDefinitionName),
      devCenterName = pulumi.Input.asInput<String>(devCenterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devBoxDefinitionName': devBoxDefinitionName,
      'devCenterName': devCenterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDevBoxDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetDevBoxDefinitionArgs(
      devBoxDefinitionName: map['devBoxDefinitionName'] as String,
      devCenterName: map['devCenterName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

