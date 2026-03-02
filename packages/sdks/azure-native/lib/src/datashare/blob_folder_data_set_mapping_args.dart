// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_blob_folder_data_set_mapping_args_doc}
/// The set of arguments for BlobFolderDataSetMapping.
/// {@endtemplate}
/// {@macro pulumi_datashare_blob_folder_data_set_mapping_args_doc}
class BlobFolderDataSetMappingArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;
  /// Container that has the file path.
  final pulumi.Input<String> containerName;
  /// The id of the source data set.
  final pulumi.Input<String> dataSetId;
  /// The name of the data set mapping to be created.
  final pulumi.Input<String>? dataSetMappingName;
  /// Kind of data set mapping.
  /// Expected value is 'BlobFolder'.
  final pulumi.Input<String> kind;
  /// Prefix for blob folder
  final pulumi.Input<String> prefix;
  /// Resource group of storage account.
  final pulumi.Input<String> resourceGroup;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the share subscription which will hold the data set sink.
  final pulumi.Input<String> shareSubscriptionName;
  /// Storage account name of the source data set.
  final pulumi.Input<String> storageAccountName;
  /// Subscription id of storage account.
  final pulumi.Input<String> subscriptionId;

  /// Creates a new [BlobFolderDataSetMappingArgs].
  /// [accountName] The name of the share account.
  /// [containerName] Container that has the file path.
  /// [dataSetId] The id of the source data set.
  /// [dataSetMappingName] The name of the data set mapping to be created.
  /// [kind] Kind of data set mapping.
  /// [prefix] Prefix for blob folder
  /// [resourceGroup] Resource group of storage account.
  /// [resourceGroupName] The resource group name.
  /// [shareSubscriptionName] The name of the share subscription which will hold the data set sink.
  /// [storageAccountName] Storage account name of the source data set.
  /// [subscriptionId] Subscription id of storage account.
  BlobFolderDataSetMappingArgs({
    required this.accountName,
    required this.containerName,
    required this.dataSetId,
    this.dataSetMappingName,
    required this.kind,
    required this.prefix,
    required this.resourceGroup,
    required this.resourceGroupName,
    required this.shareSubscriptionName,
    required this.storageAccountName,
    required this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'containerName': containerName,
      'dataSetId': dataSetId,
      'dataSetMappingName': ?dataSetMappingName,
      'kind': kind,
      'prefix': prefix,
      'resourceGroup': resourceGroup,
      'resourceGroupName': resourceGroupName,
      'shareSubscriptionName': shareSubscriptionName,
      'storageAccountName': storageAccountName,
      'subscriptionId': subscriptionId,
    };
  }

  factory BlobFolderDataSetMappingArgs.fromMap(Map<String, dynamic> map) {
    return BlobFolderDataSetMappingArgs(
      accountName: (map['accountName'] as String).input(),
      containerName: (map['containerName'] as String).input(),
      dataSetId: (map['dataSetId'] as String).input(),
      dataSetMappingName: map['dataSetMappingName'] == null ? null : (map['dataSetMappingName'] as String).input(),
      kind: (map['kind'] as String).input(),
      prefix: (map['prefix'] as String).input(),
      resourceGroup: (map['resourceGroup'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      shareSubscriptionName: (map['shareSubscriptionName'] as String).input(),
      storageAccountName: (map['storageAccountName'] as String).input(),
      subscriptionId: (map['subscriptionId'] as String).input(),
    );
  }
}

