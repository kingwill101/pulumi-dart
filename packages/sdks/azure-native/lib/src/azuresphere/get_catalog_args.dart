// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azuresphere_get_catalog_args_doc}
/// Arguments for getCatalog.
/// {@endtemplate}
/// {@macro pulumi_azuresphere_get_catalog_args_doc}
class GetCatalogArgs {
  /// Name of catalog
  final pulumi.Input<String> catalogName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCatalogArgs].
  /// [catalogName] Name of catalog
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetCatalogArgs({
    required this.catalogName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogName': catalogName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCatalogArgs.fromMap(Map<String, dynamic> map) {
    return GetCatalogArgs(
      catalogName: pulumi.Input.fromValue(map['catalogName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

