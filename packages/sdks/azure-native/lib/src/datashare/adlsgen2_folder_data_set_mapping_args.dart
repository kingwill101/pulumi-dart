// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_adlsgen2_folder_data_set_mapping_args_doc}
/// The set of arguments for ADLSGen2FolderDataSetMapping.
/// {@endtemplate}
/// {@macro pulumi_datashare_adlsgen2_folder_data_set_mapping_args_doc}
class ADLSGen2FolderDataSetMappingArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;
  /// The id of the source data set.
  final pulumi.Input<String> dataSetId;
  /// The name of the data set mapping to be created.
  final pulumi.Input<String?>? dataSetMappingName;
  /// File system to which the folder belongs.
  final pulumi.Input<String> fileSystem;
  /// Folder path within the file system.
  final pulumi.Input<String> folderPath;
  /// Kind of data set mapping.
  /// Expected value is 'AdlsGen2Folder'.
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

  /// Creates a new [ADLSGen2FolderDataSetMappingArgs].
  /// [accountName] The name of the share account.
  /// [dataSetId] The id of the source data set.
  /// [dataSetMappingName] The name of the data set mapping to be created.
  /// [fileSystem] File system to which the folder belongs.
  /// [folderPath] Folder path within the file system.
  /// [kind] Kind of data set mapping.
  /// [resourceGroup] Resource group of storage account.
  /// [resourceGroupName] The resource group name.
  /// [shareSubscriptionName] The name of the share subscription which will hold the data set sink.
  /// [storageAccountName] Storage account name of the source data set.
  /// [subscriptionId] Subscription id of storage account.
  const ADLSGen2FolderDataSetMappingArgs({
    required this.accountName,
    required this.dataSetId,
    this.dataSetMappingName,
    required this.fileSystem,
    required this.folderPath,
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
      'dataSetId': dataSetId,
      'dataSetMappingName': ?dataSetMappingName,
      'fileSystem': fileSystem,
      'folderPath': folderPath,
      'kind': kind,
      'resourceGroup': resourceGroup,
      'resourceGroupName': resourceGroupName,
      'shareSubscriptionName': shareSubscriptionName,
      'storageAccountName': storageAccountName,
      'subscriptionId': subscriptionId,
    };
  }

  factory ADLSGen2FolderDataSetMappingArgs.fromMap(Map<String, dynamic> map) {
    return ADLSGen2FolderDataSetMappingArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      dataSetId: pulumi.Input.fromValue(map['dataSetId'] as String),
      dataSetMappingName: (() { final guardedValue = map['dataSetMappingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileSystem: pulumi.Input.fromValue(map['fileSystem'] as String),
      folderPath: pulumi.Input.fromValue(map['folderPath'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      resourceGroup: pulumi.Input.fromValue(map['resourceGroup'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      shareSubscriptionName: pulumi.Input.fromValue(map['shareSubscriptionName'] as String),
      storageAccountName: pulumi.Input.fromValue(map['storageAccountName'] as String),
      subscriptionId: pulumi.Input.fromValue(map['subscriptionId'] as String),
    );
  }
}
