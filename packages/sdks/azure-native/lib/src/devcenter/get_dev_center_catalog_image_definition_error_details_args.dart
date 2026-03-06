// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_get_dev_center_catalog_image_definition_error_details_args_doc}
/// Arguments for getDevCenterCatalogImageDefinitionErrorDetails.
/// {@endtemplate}
/// {@macro pulumi_devcenter_get_dev_center_catalog_image_definition_error_details_args_doc}
class GetDevCenterCatalogImageDefinitionErrorDetailsArgs {
  /// The name of the Catalog.
  final pulumi.Input<String> catalogName;
  /// The name of the devcenter.
  final pulumi.Input<String> devCenterName;
  /// The name of the Image Definition.
  final pulumi.Input<String> imageDefinitionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDevCenterCatalogImageDefinitionErrorDetailsArgs].
  /// [catalogName] The name of the Catalog.
  /// [devCenterName] The name of the devcenter.
  /// [imageDefinitionName] The name of the Image Definition.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetDevCenterCatalogImageDefinitionErrorDetailsArgs({
    required this.catalogName,
    required this.devCenterName,
    required this.imageDefinitionName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogName': catalogName,
      'devCenterName': devCenterName,
      'imageDefinitionName': imageDefinitionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDevCenterCatalogImageDefinitionErrorDetailsArgs.fromMap(Map<String, dynamic> map) {
    return GetDevCenterCatalogImageDefinitionErrorDetailsArgs(
      catalogName: pulumi.Input.fromValue(map['catalogName'] as String),
      devCenterName: pulumi.Input.fromValue(map['devCenterName'] as String),
      imageDefinitionName: pulumi.Input.fromValue(map['imageDefinitionName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

