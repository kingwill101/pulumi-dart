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
    required this.catalogName,
    required this.environmentDefinitionName,
    required this.projectName,
    required this.resourceGroupName,
  });

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
      catalogName: (map['catalogName'] as String).input(),
      environmentDefinitionName: (map['environmentDefinitionName'] as String).input(),
      projectName: (map['projectName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

