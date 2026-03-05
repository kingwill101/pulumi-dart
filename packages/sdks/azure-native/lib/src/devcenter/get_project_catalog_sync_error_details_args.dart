// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_get_project_catalog_sync_error_details_args_doc}
/// Arguments for getProjectCatalogSyncErrorDetails.
/// {@endtemplate}
/// {@macro pulumi_devcenter_get_project_catalog_sync_error_details_args_doc}
class GetProjectCatalogSyncErrorDetailsArgs {
  /// The name of the Catalog.
  final pulumi.Input<String> catalogName;
  /// The name of the project.
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetProjectCatalogSyncErrorDetailsArgs].
  /// [catalogName] The name of the Catalog.
  /// [projectName] The name of the project.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetProjectCatalogSyncErrorDetailsArgs({
    required this.catalogName,
    required this.projectName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogName': catalogName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetProjectCatalogSyncErrorDetailsArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectCatalogSyncErrorDetailsArgs(
      catalogName: pulumi.Input.fromValue(map['catalogName'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

