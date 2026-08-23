// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_adlsgen2_file_data_set_args_doc}
/// The set of arguments for ADLSGen2FileDataSet.
/// {@endtemplate}
/// {@macro pulumi_datashare_adlsgen2_file_data_set_args_doc}
class ADLSGen2FileDataSetArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;
  /// The name of the dataSet.
  final pulumi.Input<String>? dataSetName;
  /// File path within the file system.
  final pulumi.Input<String> filePath;
  /// File system to which the file belongs.
  final pulumi.Input<String> fileSystem;
  /// Kind of data set.
  /// Expected value is 'AdlsGen2File'.
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

  /// Creates a new [ADLSGen2FileDataSetArgs].
  /// [accountName] The name of the share account.
  /// [dataSetName] The name of the dataSet.
  /// [filePath] File path within the file system.
  /// [fileSystem] File system to which the file belongs.
  /// [kind] Kind of data set.
  /// [resourceGroup] Resource group of storage account
  /// [resourceGroupName] The resource group name.
  /// [shareName] The name of the share to add the data set to.
  /// [storageAccountName] Storage account name of the source data set
  /// [subscriptionId] Subscription id of storage account
  const ADLSGen2FileDataSetArgs({
    required this.accountName,
    this.dataSetName,
    required this.filePath,
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
      'filePath': filePath,
      'fileSystem': fileSystem,
      'kind': kind,
      'resourceGroup': resourceGroup,
      'resourceGroupName': resourceGroupName,
      'shareName': shareName,
      'storageAccountName': storageAccountName,
      'subscriptionId': subscriptionId,
    };
  }

  factory ADLSGen2FileDataSetArgs.fromMap(Map<String, dynamic> map) {
    return ADLSGen2FileDataSetArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      dataSetName: (() { final guardedValue = map['dataSetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filePath: pulumi.Input.fromValue(map['filePath'] as String),
      fileSystem: pulumi.Input.fromValue(map['fileSystem'] as String),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      resourceGroup: pulumi.Input.fromValue(map['resourceGroup'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      shareName: pulumi.Input.fromValue(map['shareName'] as String),
      storageAccountName: pulumi.Input.fromValue(map['storageAccountName'] as String),
      subscriptionId: pulumi.Input.fromValue(map['subscriptionId'] as String),
    );
  }
}
