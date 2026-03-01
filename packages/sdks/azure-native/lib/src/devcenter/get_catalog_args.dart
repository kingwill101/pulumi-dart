// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_get_catalog_args_doc}
/// Arguments for getCatalog.
/// {@endtemplate}
/// {@macro pulumi_devcenter_get_catalog_args_doc}
class GetCatalogArgs {
  /// The name of the Catalog.
  final pulumi.Input<String> catalogName;
  /// The name of the devcenter.
  final pulumi.Input<String> devCenterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCatalogArgs].
  /// [catalogName] The name of the Catalog.
  /// [devCenterName] The name of the devcenter.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetCatalogArgs({
    required pulumi.Output<String> catalogName,
    required pulumi.Output<String> devCenterName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      catalogName = pulumi.Input.asInput<String>(catalogName),
      devCenterName = pulumi.Input.asInput<String>(devCenterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogName': catalogName,
      'devCenterName': devCenterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCatalogArgs.fromMap(Map<String, dynamic> map) {
    return GetCatalogArgs(
      catalogName: pulumi.Output.create<String>(map['catalogName'] as String),
      devCenterName: pulumi.Output.create<String>(map['devCenterName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

