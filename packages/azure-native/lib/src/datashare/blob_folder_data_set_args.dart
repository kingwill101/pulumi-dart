// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_blob_folder_data_set_args_doc}
/// The set of arguments for BlobFolderDataSet.
/// {@endtemplate}
/// {@macro pulumi_datashare_blob_folder_data_set_args_doc}
class BlobFolderDataSetArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;
  /// Container that has the file path.
  final pulumi.Input<String> containerName;
  /// The name of the dataSet.
  final pulumi.Input<String>? dataSetName;
  /// Kind of data set.
  /// Expected value is 'BlobFolder'.
  final pulumi.Input<String> kind;
  /// Prefix for blob folder
  final pulumi.Input<String> prefix;
  /// Resource group of storage account
  final pulumi.Input<String> resourceGroup;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the share to add the data set to.
  final pulumi.Input<String> shareName;
  /// Storage account name of the source data set
  final pulumi.Input<String> storageAccountName;
  /// Subscription id of storage account
  final pulumi.Input<String> subscriptionId;

  /// Creates a new [BlobFolderDataSetArgs].
  /// [accountName] The name of the share account.
  /// [containerName] Container that has the file path.
  /// [dataSetName] The name of the dataSet.
  /// [kind] Kind of data set.
  /// [prefix] Prefix for blob folder
  /// [resourceGroup] Resource group of storage account
  /// [resourceGroupName] The resource group name.
  /// [shareName] The name of the share to add the data set to.
  /// [storageAccountName] Storage account name of the source data set
  /// [subscriptionId] Subscription id of storage account
  BlobFolderDataSetArgs({
    required String accountName,
    required String containerName,
    String? dataSetName,
    required String kind,
    required String prefix,
    required String resourceGroup,
    required String resourceGroupName,
    required String shareName,
    required String storageAccountName,
    required String subscriptionId,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      containerName = pulumi.Input.asInput<String>(containerName),
      dataSetName = pulumi.Input.asOptionalInput<String>(dataSetName),
      kind = pulumi.Input.asInput<String>(kind),
      prefix = pulumi.Input.asInput<String>(prefix),
      resourceGroup = pulumi.Input.asInput<String>(resourceGroup),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      shareName = pulumi.Input.asInput<String>(shareName),
      storageAccountName = pulumi.Input.asInput<String>(storageAccountName),
      subscriptionId = pulumi.Input.asInput<String>(subscriptionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'containerName': containerName,
      'dataSetName': ?dataSetName,
      'kind': kind,
      'prefix': prefix,
      'resourceGroup': resourceGroup,
      'resourceGroupName': resourceGroupName,
      'shareName': shareName,
      'storageAccountName': storageAccountName,
      'subscriptionId': subscriptionId,
    };
  }

  factory BlobFolderDataSetArgs.fromMap(Map<String, dynamic> map) {
    return BlobFolderDataSetArgs(
      accountName: map['accountName'] as String,
      containerName: map['containerName'] as String,
      dataSetName: map['dataSetName'] == null ? null : map['dataSetName'] as String,
      kind: map['kind'] as String,
      prefix: map['prefix'] as String,
      resourceGroup: map['resourceGroup'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      shareName: map['shareName'] as String,
      storageAccountName: map['storageAccountName'] as String,
      subscriptionId: map['subscriptionId'] as String,
    );
  }
}

