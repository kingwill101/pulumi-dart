// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_get_project_catalog_environment_definition_error_details_args_doc}
/// Arguments for getProjectCatalogEnvironmentDefinitionErrorDetails.
/// {@endtemplate}
/// {@macro pulumi_devcenter_get_project_catalog_environment_definition_error_details_args_doc}
class GetProjectCatalogEnvironmentDefinitionErrorDetailsArgs {
  /// The name of the Catalog.
  final pulumi.Input<String> catalogName;
  /// The name of the Environment Definition.
  final pulumi.Input<String> environmentDefinitionName;
  /// The name of the project.
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetProjectCatalogEnvironmentDefinitionErrorDetailsArgs].
  /// [catalogName] The name of the Catalog.
  /// [environmentDefinitionName] The name of the Environment Definition.
  /// [projectName] The name of the project.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetProjectCatalogEnvironmentDefinitionErrorDetailsArgs({
    required pulumi.Output<String> catalogName,
    required pulumi.Output<String> environmentDefinitionName,
    required pulumi.Output<String> projectName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      catalogName = pulumi.Input.asInput<String>(catalogName),
      environmentDefinitionName = pulumi.Input.asInput<String>(environmentDefinitionName),
      projectName = pulumi.Input.asInput<String>(projectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogName': catalogName,
      'environmentDefinitionName': environmentDefinitionName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetProjectCatalogEnvironmentDefinitionErrorDetailsArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectCatalogEnvironmentDefinitionErrorDetailsArgs(
      catalogName: pulumi.Output.create<String>(map['catalogName'] as String),
      environmentDefinitionName: pulumi.Output.create<String>(map['environmentDefinitionName'] as String),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

