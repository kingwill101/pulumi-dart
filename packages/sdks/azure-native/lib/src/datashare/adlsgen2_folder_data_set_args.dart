// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_adlsgen2_folder_data_set_args_doc}
/// The set of arguments for ADLSGen2FolderDataSet.
/// {@endtemplate}
/// {@macro pulumi_datashare_adlsgen2_folder_data_set_args_doc}
class ADLSGen2FolderDataSetArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;
  /// The name of the dataSet.
  final pulumi.Input<String>? dataSetName;
  /// File system to which the folder belongs.
  final pulumi.Input<String> fileSystem;
  /// Folder path within the file system.
  final pulumi.Input<String> folderPath;
  /// Kind of data set.
  /// Expected value is 'AdlsGen2Folder'.
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

  /// Creates a new [ADLSGen2FolderDataSetArgs].
  /// [accountName] The name of the share account.
  /// [dataSetName] The name of the dataSet.
  /// [fileSystem] File system to which the folder belongs.
  /// [folderPath] Folder path within the file system.
  /// [kind] Kind of data set.
  /// [resourceGroup] Resource group of storage account
  /// [resourceGroupName] The resource group name.
  /// [shareName] The name of the share to add the data set to.
  /// [storageAccountName] Storage account name of the source data set
  /// [subscriptionId] Subscription id of storage account
  ADLSGen2FolderDataSetArgs({
    required pulumi.Output<String> accountName,
    pulumi.Output<String>? dataSetName,
    required pulumi.Output<String> fileSystem,
    required pulumi.Output<String> folderPath,
    required pulumi.Output<String> kind,
    required pulumi.Output<String> resourceGroup,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> shareName,
    required pulumi.Output<String> storageAccountName,
    required pulumi.Output<String> subscriptionId,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      dataSetName = pulumi.Input.asOptionalInput<String>(dataSetName),
      fileSystem = pulumi.Input.asInput<String>(fileSystem),
      folderPath = pulumi.Input.asInput<String>(folderPath),
      kind = pulumi.Input.asInput<String>(kind),
      resourceGroup = pulumi.Input.asInput<String>(resourceGroup),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      shareName = pulumi.Input.asInput<String>(shareName),
      storageAccountName = pulumi.Input.asInput<String>(storageAccountName),
      subscriptionId = pulumi.Input.asInput<String>(subscriptionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'dataSetName': ?dataSetName,
      'fileSystem': fileSystem,
      'folderPath': folderPath,
      'kind': kind,
      'resourceGroup': resourceGroup,
      'resourceGroupName': resourceGroupName,
      'shareName': shareName,
      'storageAccountName': storageAccountName,
      'subscriptionId': subscriptionId,
    };
  }

  factory ADLSGen2FolderDataSetArgs.fromMap(Map<String, dynamic> map) {
    return ADLSGen2FolderDataSetArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      dataSetName: map['dataSetName'] == null ? null : pulumi.Output.create<String>(map['dataSetName'] as String),
      fileSystem: pulumi.Output.create<String>(map['fileSystem'] as String),
      folderPath: pulumi.Output.create<String>(map['folderPath'] as String),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      resourceGroup: pulumi.Output.create<String>(map['resourceGroup'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      shareName: pulumi.Output.create<String>(map['shareName'] as String),
      storageAccountName: pulumi.Output.create<String>(map['storageAccountName'] as String),
      subscriptionId: pulumi.Output.create<String>(map['subscriptionId'] as String),
    );
  }
}

