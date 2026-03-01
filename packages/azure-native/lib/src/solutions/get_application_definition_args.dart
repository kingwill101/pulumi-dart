// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_solutions_get_application_definition_args_doc}
/// Arguments for getApplicationDefinition.
/// {@endtemplate}
/// {@macro pulumi_solutions_get_application_definition_args_doc}
class GetApplicationDefinitionArgs {
  /// The name of the managed application definition.
  final pulumi.Input<String> applicationDefinitionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetApplicationDefinitionArgs].
  /// [applicationDefinitionName] The name of the managed application definition.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetApplicationDefinitionArgs({
    required String applicationDefinitionName,
    required String resourceGroupName,
  }) :
      applicationDefinitionName = pulumi.Input.asInput<String>(applicationDefinitionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationDefinitionName': applicationDefinitionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetApplicationDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationDefinitionArgs(
      applicationDefinitionName: map['applicationDefinitionName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

