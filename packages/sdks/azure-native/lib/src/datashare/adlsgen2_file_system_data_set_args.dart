// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_adlsgen2_file_system_data_set_args_doc}
/// The set of arguments for ADLSGen2FileSystemDataSet.
/// {@endtemplate}
/// {@macro pulumi_datashare_adlsgen2_file_system_data_set_args_doc}
class ADLSGen2FileSystemDataSetArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;
  /// The name of the dataSet.
  final pulumi.Input<String>? dataSetName;
  /// The file system name.
  final pulumi.Input<String> fileSystem;
  /// Kind of data set.
  /// Expected value is 'AdlsGen2FileSystem'.
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

  /// Creates a new [ADLSGen2FileSystemDataSetArgs].
  /// [accountName] The name of the share account.
  /// [dataSetName] The name of the dataSet.
  /// [fileSystem] The file system name.
  /// [kind] Kind of data set.
  /// [resourceGroup] Resource group of storage account
  /// [resourceGroupName] The resource group name.
  /// [shareName] The name of the share to add the data set to.
  /// [storageAccountName] Storage account name of the source data set
  /// [subscriptionId] Subscription id of storage account
  ADLSGen2FileSystemDataSetArgs({
    required this.accountName,
    this.dataSetName,
    required this.fileSystem,
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
      'dataSetName': ?dataSetName,
      'fileSystem': fileSystem,
      'kind': kind,
      'resourceGroup': resourceGroup,
      'resourceGroupName': resourceGroupName,
      'shareName': shareName,
      'storageAccountName': storageAccountName,
      'subscriptionId': subscriptionId,
    };
  }

  factory ADLSGen2FileSystemDataSetArgs.fromMap(Map<String, dynamic> map) {
    return ADLSGen2FileSystemDataSetArgs(
      accountName: (map['accountName'] as String).input(),
      dataSetName: map['dataSetName'] == null ? null : (map['dataSetName']! as String).input(),
      fileSystem: (map['fileSystem'] as String).input(),
      kind: (map['kind'] as String).input(),
      resourceGroup: (map['resourceGroup'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      shareName: (map['shareName'] as String).input(),
      storageAccountName: (map['storageAccountName'] as String).input(),
      subscriptionId: (map['subscriptionId'] as String).input(),
    );
  }
}

