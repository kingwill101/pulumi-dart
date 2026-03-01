// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_sku.dart';

/// {@template pulumi_powerbi_workspace_collection_args_doc}
/// The set of arguments for WorkspaceCollection.
/// {@endtemplate}
/// {@macro pulumi_powerbi_workspace_collection_args_doc}
class WorkspaceCollectionArgs {
  /// Azure location
  final pulumi.Input<String>? location;
  /// Azure resource group
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<AzureSku>? sku;
  final pulumi.Input<Map<String, String>>? tags;
  /// Power BI Embedded Workspace Collection name
  final pulumi.Input<String>? workspaceCollectionName;

  /// Creates a new [WorkspaceCollectionArgs].
  /// [location] Azure location
  /// [resourceGroupName] Azure resource group
  /// [sku] Optional.
  /// [tags] Optional.
  /// [workspaceCollectionName] Power BI Embedded Workspace Collection name
  WorkspaceCollectionArgs({
    String? location,
    required String resourceGroupName,
    AzureSku? sku,
    Map<String, String>? tags,
    String? workspaceCollectionName,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<AzureSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workspaceCollectionName = pulumi.Input.asOptionalInput<String>(workspaceCollectionName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<AzureSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'workspaceCollectionName': ?workspaceCollectionName,
    };
  }

  factory WorkspaceCollectionArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceCollectionArgs(
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sku: map['sku'] == null ? null : AzureSku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      workspaceCollectionName: map['workspaceCollectionName'] == null ? null : map['workspaceCollectionName'] as String,
    );
  }
}

