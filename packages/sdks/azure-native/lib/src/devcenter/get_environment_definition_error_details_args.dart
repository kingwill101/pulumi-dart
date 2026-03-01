// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_get_environment_definition_error_details_args_doc}
/// Arguments for getEnvironmentDefinitionErrorDetails.
/// {@endtemplate}
/// {@macro pulumi_devcenter_get_environment_definition_error_details_args_doc}
class GetEnvironmentDefinitionErrorDetailsArgs {
  /// The name of the Catalog.
  final pulumi.Input<String> catalogName;
  /// The name of the devcenter.
  final pulumi.Input<String> devCenterName;
  /// The name of the Environment Definition.
  final pulumi.Input<String> environmentDefinitionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEnvironmentDefinitionErrorDetailsArgs].
  /// [catalogName] The name of the Catalog.
  /// [devCenterName] The name of the devcenter.
  /// [environmentDefinitionName] The name of the Environment Definition.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetEnvironmentDefinitionErrorDetailsArgs({
    required pulumi.Output<String> catalogName,
    required pulumi.Output<String> devCenterName,
    required pulumi.Output<String> environmentDefinitionName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      catalogName = pulumi.Input.asInput<String>(catalogName),
      devCenterName = pulumi.Input.asInput<String>(devCenterName),
      environmentDefinitionName = pulumi.Input.asInput<String>(environmentDefinitionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogName': catalogName,
      'devCenterName': devCenterName,
      'environmentDefinitionName': environmentDefinitionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEnvironmentDefinitionErrorDetailsArgs.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentDefinitionErrorDetailsArgs(
      catalogName: pulumi.Output.create<String>(map['catalogName'] as String),
      devCenterName: pulumi.Output.create<String>(map['devCenterName'] as String),
      environmentDefinitionName: pulumi.Output.create<String>(map['environmentDefinitionName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

