// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_get_project_catalog_image_definition_build_details_args_doc}
/// Arguments for getProjectCatalogImageDefinitionBuildDetails.
/// {@endtemplate}
/// {@macro pulumi_devcenter_get_project_catalog_image_definition_build_details_args_doc}
class GetProjectCatalogImageDefinitionBuildDetailsArgs {
  /// The ID of the Image Definition Build.
  final pulumi.Input<String> buildName;
  /// The name of the Catalog.
  final pulumi.Input<String> catalogName;
  /// The name of the Image Definition.
  final pulumi.Input<String> imageDefinitionName;
  /// The name of the project.
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetProjectCatalogImageDefinitionBuildDetailsArgs].
  /// [buildName] The ID of the Image Definition Build.
  /// [catalogName] The name of the Catalog.
  /// [imageDefinitionName] The name of the Image Definition.
  /// [projectName] The name of the project.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetProjectCatalogImageDefinitionBuildDetailsArgs({
    required this.buildName,
    required this.catalogName,
    required this.imageDefinitionName,
    required this.projectName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildName': buildName,
      'catalogName': catalogName,
      'imageDefinitionName': imageDefinitionName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetProjectCatalogImageDefinitionBuildDetailsArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectCatalogImageDefinitionBuildDetailsArgs(
      buildName: pulumi.Input.fromValue(map['buildName'] as String),
      catalogName: pulumi.Input.fromValue(map['catalogName'] as String),
      imageDefinitionName: pulumi.Input.fromValue(map['imageDefinitionName'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

