// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_get_dev_center_catalog_image_definition_build_details_args_doc}
/// Arguments for getDevCenterCatalogImageDefinitionBuildDetails.
/// {@endtemplate}
/// {@macro pulumi_devcenter_get_dev_center_catalog_image_definition_build_details_args_doc}
class GetDevCenterCatalogImageDefinitionBuildDetailsArgs {
  /// The ID of the Image Definition Build.
  final pulumi.Input<String> buildName;
  /// The name of the Catalog.
  final pulumi.Input<String> catalogName;
  /// The name of the devcenter.
  final pulumi.Input<String> devCenterName;
  /// The name of the Image Definition.
  final pulumi.Input<String> imageDefinitionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDevCenterCatalogImageDefinitionBuildDetailsArgs].
  /// [buildName] The ID of the Image Definition Build.
  /// [catalogName] The name of the Catalog.
  /// [devCenterName] The name of the devcenter.
  /// [imageDefinitionName] The name of the Image Definition.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDevCenterCatalogImageDefinitionBuildDetailsArgs({
    required String buildName,
    required String catalogName,
    required String devCenterName,
    required String imageDefinitionName,
    required String resourceGroupName,
  }) :
      buildName = pulumi.Input.asInput<String>(buildName),
      catalogName = pulumi.Input.asInput<String>(catalogName),
      devCenterName = pulumi.Input.asInput<String>(devCenterName),
      imageDefinitionName = pulumi.Input.asInput<String>(imageDefinitionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildName': buildName,
      'catalogName': catalogName,
      'devCenterName': devCenterName,
      'imageDefinitionName': imageDefinitionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDevCenterCatalogImageDefinitionBuildDetailsArgs.fromMap(Map<String, dynamic> map) {
    return GetDevCenterCatalogImageDefinitionBuildDetailsArgs(
      buildName: map['buildName'] as String,
      catalogName: map['catalogName'] as String,
      devCenterName: map['devCenterName'] as String,
      imageDefinitionName: map['imageDefinitionName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

