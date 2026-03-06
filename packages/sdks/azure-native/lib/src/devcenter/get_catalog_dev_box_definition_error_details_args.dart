// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_get_catalog_dev_box_definition_error_details_args_doc}
/// Arguments for getCatalogDevBoxDefinitionErrorDetails.
/// {@endtemplate}
/// {@macro pulumi_devcenter_get_catalog_dev_box_definition_error_details_args_doc}
class GetCatalogDevBoxDefinitionErrorDetailsArgs {
  /// The name of the Catalog.
  final pulumi.Input<String> catalogName;
  /// The name of the Dev Box definition.
  final pulumi.Input<String> devBoxDefinitionName;
  /// The name of the devcenter.
  final pulumi.Input<String> devCenterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCatalogDevBoxDefinitionErrorDetailsArgs].
  /// [catalogName] The name of the Catalog.
  /// [devBoxDefinitionName] The name of the Dev Box definition.
  /// [devCenterName] The name of the devcenter.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetCatalogDevBoxDefinitionErrorDetailsArgs({
    required this.catalogName,
    required this.devBoxDefinitionName,
    required this.devCenterName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogName': catalogName,
      'devBoxDefinitionName': devBoxDefinitionName,
      'devCenterName': devCenterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCatalogDevBoxDefinitionErrorDetailsArgs.fromMap(Map<String, dynamic> map) {
    return GetCatalogDevBoxDefinitionErrorDetailsArgs(
      catalogName: pulumi.Input.fromValue(map['catalogName'] as String),
      devBoxDefinitionName: pulumi.Input.fromValue(map['devBoxDefinitionName'] as String),
      devCenterName: pulumi.Input.fromValue(map['devCenterName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

