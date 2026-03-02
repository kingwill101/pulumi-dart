// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_blob_data_set_args_doc}
/// The set of arguments for BlobDataSet.
/// {@endtemplate}
/// {@macro pulumi_datashare_blob_data_set_args_doc}
class BlobDataSetArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;
  /// Container that has the file path.
  final pulumi.Input<String> containerName;
  /// The name of the dataSet.
  final pulumi.Input<String>? dataSetName;
  /// File path within the source data set
  final pulumi.Input<String> filePath;
  /// Kind of data set.
  /// Expected value is 'Blob'.
  final pulumi.Input<String> kind;
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

  /// Creates a new [BlobDataSetArgs].
  /// [accountName] The name of the share account.
  /// [containerName] Container that has the file path.
  /// [dataSetName] The name of the dataSet.
  /// [filePath] File path within the source data set
  /// [kind] Kind of data set.
  /// [resourceGroup] Resource group of storage account
  /// [resourceGroupName] The resource group name.
  /// [shareName] The name of the share to add the data set to.
  /// [storageAccountName] Storage account name of the source data set
  /// [subscriptionId] Subscription id of storage account
  BlobDataSetArgs({
    required this.accountName,
    required this.containerName,
    this.dataSetName,
    required this.filePath,
    required this.kind,
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
      'filePath': filePath,
      'kind': kind,
      'resourceGroup': resourceGroup,
      'resourceGroupName': resourceGroupName,
      'shareName': shareName,
      'storageAccountName': storageAccountName,
      'subscriptionId': subscriptionId,
    };
  }

  factory BlobDataSetArgs.fromMap(Map<String, dynamic> map) {
    return BlobDataSetArgs(
      accountName: (map['accountName'] as String).input(),
      containerName: (map['containerName'] as String).input(),
      dataSetName: map['dataSetName'] == null ? null : (map['dataSetName'] as String).input(),
      filePath: (map['filePath'] as String).input(),
      kind: (map['kind'] as String).input(),
      resourceGroup: (map['resourceGroup'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      shareName: (map['shareName'] as String).input(),
      storageAccountName: (map['storageAccountName'] as String).input(),
      subscriptionId: (map['subscriptionId'] as String).input(),
    );
  }
}

