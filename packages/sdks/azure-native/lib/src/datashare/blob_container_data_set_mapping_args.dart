// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_blob_container_data_set_mapping_args_doc}
/// The set of arguments for BlobContainerDataSetMapping.
/// {@endtemplate}
/// {@macro pulumi_datashare_blob_container_data_set_mapping_args_doc}
class BlobContainerDataSetMappingArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;
  /// BLOB Container name.
  final pulumi.Input<String> containerName;
  /// The id of the source data set.
  final pulumi.Input<String> dataSetId;
  /// The name of the data set mapping to be created.
  final pulumi.Input<String>? dataSetMappingName;
  /// Kind of data set mapping.
  /// Expected value is 'Container'.
  final pulumi.Input<String> kind;
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

  /// Creates a new [BlobContainerDataSetMappingArgs].
  /// [accountName] The name of the share account.
  /// [containerName] BLOB Container name.
  /// [dataSetId] The id of the source data set.
  /// [dataSetMappingName] The name of the data set mapping to be created.
  /// [kind] Kind of data set mapping.
  /// [resourceGroup] Resource group of storage account.
  /// [resourceGroupName] The resource group name.
  /// [shareSubscriptionName] The name of the share subscription which will hold the data set sink.
  /// [storageAccountName] Storage account name of the source data set.
  /// [subscriptionId] Subscription id of storage account.
  BlobContainerDataSetMappingArgs({
    required this.accountName,
    required this.containerName,
    required this.dataSetId,
    this.dataSetMappingName,
    required this.kind,
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
      'resourceGroup': resourceGroup,
      'resourceGroupName': resourceGroupName,
      'shareSubscriptionName': shareSubscriptionName,
      'storageAccountName': storageAccountName,
      'subscriptionId': subscriptionId,
    };
  }

  factory BlobContainerDataSetMappingArgs.fromMap(Map<String, dynamic> map) {
    return BlobContainerDataSetMappingArgs(
      accountName: (map['accountName'] as String).input(),
      containerName: (map['containerName'] as String).input(),
      dataSetId: (map['dataSetId'] as String).input(),
      dataSetMappingName: map['dataSetMappingName'] == null ? null : (map['dataSetMappingName']! as String).input(),
      kind: (map['kind'] as String).input(),
      resourceGroup: (map['resourceGroup'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      shareSubscriptionName: (map['shareSubscriptionName'] as String).input(),
      storageAccountName: (map['storageAccountName'] as String).input(),
      subscriptionId: (map['subscriptionId'] as String).input(),
    );
  }
}

