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
  const GetEnvironmentDefinitionErrorDetailsArgs({
    required this.catalogName,
    required this.devCenterName,
    required this.environmentDefinitionName,
    required this.resourceGroupName,
  });

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
      catalogName: pulumi.Input.fromValue(map['catalogName'] as String),
      devCenterName: pulumi.Input.fromValue(map['devCenterName'] as String),
      environmentDefinitionName: pulumi.Input.fromValue(map['environmentDefinitionName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
