// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_get_project_catalog_image_definition_error_details_args_doc}
/// Arguments for getProjectCatalogImageDefinitionErrorDetails.
/// {@endtemplate}
/// {@macro pulumi_devcenter_get_project_catalog_image_definition_error_details_args_doc}
class GetProjectCatalogImageDefinitionErrorDetailsArgs {
  /// The name of the Catalog.
  final pulumi.Input<String> catalogName;
  /// The name of the Image Definition.
  final pulumi.Input<String> imageDefinitionName;
  /// The name of the project.
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetProjectCatalogImageDefinitionErrorDetailsArgs].
  /// [catalogName] The name of the Catalog.
  /// [imageDefinitionName] The name of the Image Definition.
  /// [projectName] The name of the project.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetProjectCatalogImageDefinitionErrorDetailsArgs({
    required String catalogName,
    required String imageDefinitionName,
    required String projectName,
    required String resourceGroupName,
  }) :
      catalogName = pulumi.Input.asInput<String>(catalogName),
      imageDefinitionName = pulumi.Input.asInput<String>(imageDefinitionName),
      projectName = pulumi.Input.asInput<String>(projectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogName': catalogName,
      'imageDefinitionName': imageDefinitionName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetProjectCatalogImageDefinitionErrorDetailsArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectCatalogImageDefinitionErrorDetailsArgs(
      catalogName: map['catalogName'] as String,
      imageDefinitionName: map['imageDefinitionName'] as String,
      projectName: map['projectName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

