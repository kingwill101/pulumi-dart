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
  final pulumi.Input<String?>? dataSetName;
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
  const BlobFolderDataSetArgs({
    required this.accountName,
    required this.containerName,
    this.dataSetName,
    required this.kind,
    required this.prefix,
    required this.resourceGroup,
    required this.resourceGroupName,
    required this.shareName,
    required this.storageAccountName,
    required this.subscriptionId,
  });

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
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      containerName: pulumi.Input.fromValue(map['containerName'] as String),
      dataSetName: (() { final guardedValue = map['dataSetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      prefix: pulumi.Input.fromValue(map['prefix'] as String),
      resourceGroup: pulumi.Input.fromValue(map['resourceGroup'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      shareName: pulumi.Input.fromValue(map['shareName'] as String),
      storageAccountName: pulumi.Input.fromValue(map['storageAccountName'] as String),
      subscriptionId: pulumi.Input.fromValue(map['subscriptionId'] as String),
    );
  }
}
