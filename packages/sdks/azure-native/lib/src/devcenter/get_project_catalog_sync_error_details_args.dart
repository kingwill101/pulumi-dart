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
    required pulumi.Output<String> catalogName,
    required pulumi.Output<String> projectName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      catalogName = pulumi.Input.asInput<String>(catalogName),
      projectName = pulumi.Input.asInput<String>(projectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogName': catalogName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetProjectCatalogSyncErrorDetailsArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectCatalogSyncErrorDetailsArgs(
      catalogName: pulumi.Output.create<String>(map['catalogName'] as String),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

