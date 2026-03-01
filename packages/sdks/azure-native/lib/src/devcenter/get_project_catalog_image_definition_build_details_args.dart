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
  GetProjectCatalogImageDefinitionBuildDetailsArgs({
    required pulumi.Output<String> buildName,
    required pulumi.Output<String> catalogName,
    required pulumi.Output<String> imageDefinitionName,
    required pulumi.Output<String> projectName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      buildName = pulumi.Input.asInput<String>(buildName),
      catalogName = pulumi.Input.asInput<String>(catalogName),
      imageDefinitionName = pulumi.Input.asInput<String>(imageDefinitionName),
      projectName = pulumi.Input.asInput<String>(projectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      buildName: pulumi.Output.create<String>(map['buildName'] as String),
      catalogName: pulumi.Output.create<String>(map['catalogName'] as String),
      imageDefinitionName: pulumi.Output.create<String>(map['imageDefinitionName'] as String),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

