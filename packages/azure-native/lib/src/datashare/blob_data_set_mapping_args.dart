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
  BlobDataSetMappingArgs({
    required String accountName,
    required String containerName,
    required String dataSetId,
    String? dataSetMappingName,
    required String filePath,
    required String kind,
    String? outputType,
    required String resourceGroup,
    required String resourceGroupName,
    required String shareSubscriptionName,
    required String storageAccountName,
    required String subscriptionId,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      containerName = pulumi.Input.asInput<String>(containerName),
      dataSetId = pulumi.Input.asInput<String>(dataSetId),
      dataSetMappingName = pulumi.Input.asOptionalInput<String>(dataSetMappingName),
      filePath = pulumi.Input.asInput<String>(filePath),
      kind = pulumi.Input.asInput<String>(kind),
      outputType = pulumi.Input.asOptionalInput<String>(outputType),
      resourceGroup = pulumi.Input.asInput<String>(resourceGroup),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      shareSubscriptionName = pulumi.Input.asInput<String>(shareSubscriptionName),
      storageAccountName = pulumi.Input.asInput<String>(storageAccountName),
      subscriptionId = pulumi.Input.asInput<String>(subscriptionId);

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
      accountName: map['accountName'] as String,
      containerName: map['containerName'] as String,
      dataSetId: map['dataSetId'] as String,
      dataSetMappingName: map['dataSetMappingName'] == null ? null : map['dataSetMappingName'] as String,
      filePath: map['filePath'] as String,
      kind: map['kind'] as String,
      outputType: map['outputType'] == null ? null : map['outputType'] as String,
      resourceGroup: map['resourceGroup'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      shareSubscriptionName: map['shareSubscriptionName'] as String,
      storageAccountName: map['storageAccountName'] as String,
      subscriptionId: map['subscriptionId'] as String,
    );
  }
}

