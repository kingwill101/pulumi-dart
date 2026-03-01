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
  GetDevCenterCatalogImageDefinitionErrorDetailsArgs({
    required pulumi.Output<String> catalogName,
    required pulumi.Output<String> devCenterName,
    required pulumi.Output<String> imageDefinitionName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      catalogName = pulumi.Input.asInput<String>(catalogName),
      devCenterName = pulumi.Input.asInput<String>(devCenterName),
      imageDefinitionName = pulumi.Input.asInput<String>(imageDefinitionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      catalogName: pulumi.Output.create<String>(map['catalogName'] as String),
      devCenterName: pulumi.Output.create<String>(map['devCenterName'] as String),
      imageDefinitionName: pulumi.Output.create<String>(map['imageDefinitionName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

