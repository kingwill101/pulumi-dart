// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_account.dart';

/// {@template pulumi_operationalinsights_storage_insight_config_args_doc}
/// The set of arguments for StorageInsightConfig.
/// {@endtemplate}
/// {@macro pulumi_operationalinsights_storage_insight_config_args_doc}
class StorageInsightConfigArgs {
  /// The names of the blob containers that the workspace should read
  final pulumi.Input<List<String>>? containers;
  /// The ETag of the storage insight.
  final pulumi.Input<String>? eTag;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The storage account connection details
  final pulumi.Input<StorageAccount> storageAccount;
  /// Name of the storageInsightsConfigs resource
  final pulumi.Input<String>? storageInsightName;
  /// The names of the Azure tables that the workspace should read
  final pulumi.Input<List<String>>? tables;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [StorageInsightConfigArgs].
  /// [containers] The names of the blob containers that the workspace should read
  /// [eTag] The ETag of the storage insight.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageAccount] The storage account connection details
  /// [storageInsightName] Name of the storageInsightsConfigs resource
  /// [tables] The names of the Azure tables that the workspace should read
  /// [tags] Resource tags.
  /// [workspaceName] The name of the workspace.
  StorageInsightConfigArgs({
    List<String>? containers,
    String? eTag,
    required String resourceGroupName,
    required StorageAccount storageAccount,
    String? storageInsightName,
    List<String>? tables,
    Map<String, String>? tags,
    required String workspaceName,
  }) :
      containers = pulumi.Input.asOptionalInput<List<String>>(containers),
      eTag = pulumi.Input.asOptionalInput<String>(eTag),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storageAccount = pulumi.Input.asInput<StorageAccount>(storageAccount),
      storageInsightName = pulumi.Input.asOptionalInput<String>(storageInsightName),
      tables = pulumi.Input.asOptionalInput<List<String>>(tables),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containers': ?containers,
      'eTag': ?eTag,
      'resourceGroupName': resourceGroupName,
      'storageAccount': pulumi.Input.mapInputValue<StorageAccount, Map<String, dynamic>>(storageAccount, (value) => value.toMap()),
      'storageInsightName': ?storageInsightName,
      'tables': ?tables,
      'tags': ?tags,
      'workspaceName': workspaceName,
    };
  }

  factory StorageInsightConfigArgs.fromMap(Map<String, dynamic> map) {
    return StorageInsightConfigArgs(
      containers: map['containers'] == null ? null : (map['containers'] as List).cast<String>(),
      eTag: map['eTag'] == null ? null : map['eTag'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      storageAccount: StorageAccount.fromMap((map['storageAccount'] as Map).cast<String, dynamic>()),
      storageInsightName: map['storageInsightName'] == null ? null : map['storageInsightName'] as String,
      tables: map['tables'] == null ? null : (map['tables'] as List).cast<String>(),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      workspaceName: map['workspaceName'] as String,
    );
  }
}

