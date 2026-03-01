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
  GetCatalogDevBoxDefinitionErrorDetailsArgs({
    required String catalogName,
    required String devBoxDefinitionName,
    required String devCenterName,
    required String resourceGroupName,
  }) :
      catalogName = pulumi.Input.asInput<String>(catalogName),
      devBoxDefinitionName = pulumi.Input.asInput<String>(devBoxDefinitionName),
      devCenterName = pulumi.Input.asInput<String>(devCenterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      catalogName: map['catalogName'] as String,
      devBoxDefinitionName: map['devBoxDefinitionName'] as String,
      devCenterName: map['devCenterName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

