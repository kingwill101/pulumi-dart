// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_get_catalog_sync_error_details_args_doc}
/// Arguments for getCatalogSyncErrorDetails.
/// {@endtemplate}
/// {@macro pulumi_devcenter_get_catalog_sync_error_details_args_doc}
class GetCatalogSyncErrorDetailsArgs {
  /// The name of the Catalog.
  final pulumi.Input<String> catalogName;
  /// The name of the devcenter.
  final pulumi.Input<String> devCenterName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCatalogSyncErrorDetailsArgs].
  /// [catalogName] The name of the Catalog.
  /// [devCenterName] The name of the devcenter.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetCatalogSyncErrorDetailsArgs({
    required this.catalogName,
    required this.devCenterName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogName': catalogName,
      'devCenterName': devCenterName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCatalogSyncErrorDetailsArgs.fromMap(Map<String, dynamic> map) {
    return GetCatalogSyncErrorDetailsArgs(
      catalogName: (map['catalogName'] as String).input(),
      devCenterName: (map['devCenterName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

