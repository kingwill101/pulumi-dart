// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_blob_data_set_mapping_args_doc}
/// The set of arguments for BlobDataSetMapping.
/// {@endtemplate}
/// {@macro pulumi_datashare_blob_data_set_mapping_args_doc}
class BlobDataSetMappingArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;
  /// Container that has the file path.
  final pulumi.Input<String> containerName;
  /// The id of the source data set.
  final pulumi.Input<String> dataSetId;
  /// The name of the data set mapping to be created.
  final pulumi.Input<String>? dataSetMappingName;
  /// File path within the source data set
  final pulumi.Input<String> filePath;
  /// Kind of data set mapping.
  /// Expected value is 'Blob'.
  final pulumi.Input<String> kind;
  /// File output type
  final pulumi.Input<String>? outputType;
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

  /// Creates a new [BlobDataSetMappingArgs].
  /// [accountName] The name of the share account.
  /// [containerName] Container that has the file path.
  /// [dataSetId] The id of the source data set.
  /// [dataSetMappingName] The name of the data set mapping to be created.
  /// [filePath] File path within the source data set
  /// [kind] Kind of data set mapping.
  /// [outputType] File output type
  /// [resourceGroup] Resource group of storage account.
  /// [resourceGroupName] The resource group name.
  /// [shareSubscriptionName] The name of the share subscription which will hold the data set sink.
  /// [storageAccountName] Storage account name of the source data set.
  /// [subscriptionId] Subscription id of storage account.
  const BlobDataSetMappingArgs({
    required this.accountName,
    required this.containerName,
    required this.dataSetId,
    this.dataSetMappingName,
    required this.filePath,
    required this.kind,
    this.outputType,
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
      'filePath': filePath,
      'kind': kind,
      'outputType': ?outputType,
      'resourceGroup': resourceGroup,
      'resourceGroupName': resourceGroupName,
      'shareSubscriptionName': shareSubscriptionName,
      'storageAccountName': storageAccountName,
      'subscriptionId': subscriptionId,
    };
  }

  factory BlobDataSetMappingArgs.fromMap(Map<String, dynamic> map) {
    return BlobDataSetMappingArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      containerName: pulumi.Input.fromValue(map['containerName'] as String),
      dataSetId: pulumi.Input.fromValue(map['dataSetId'] as String),
      dataSetMappingName: (() { final guardedValue = map['dataSetMappingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filePath: pulumi.Input.fromValue(map['filePath'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      outputType: (() { final guardedValue = map['outputType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroup: pulumi.Input.fromValue(map['resourceGroup'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      shareSubscriptionName: pulumi.Input.fromValue(map['shareSubscriptionName'] as String),
      storageAccountName: pulumi.Input.fromValue(map['storageAccountName'] as String),
      subscriptionId: pulumi.Input.fromValue(map['subscriptionId'] as String),
    );
  }
}

