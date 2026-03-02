// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_adlsgen1_folder_data_set_args_doc}
/// The set of arguments for ADLSGen1FolderDataSet.
/// {@endtemplate}
/// {@macro pulumi_datashare_adlsgen1_folder_data_set_args_doc}
class ADLSGen1FolderDataSetArgs {
  /// The ADLS account name.
  final pulumi.Input<String> accountName;
  /// The name of the dataSet.
  final pulumi.Input<String>? dataSetName;
  /// The folder path within the ADLS account.
  final pulumi.Input<String> folderPath;
  /// Kind of data set.
  /// Expected value is 'AdlsGen1Folder'.
  final pulumi.Input<String> kind;
  /// Resource group of ADLS account.
  final pulumi.Input<String> resourceGroup;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the share to add the data set to.
  final pulumi.Input<String> shareName;
  /// Subscription id of ADLS account.
  final pulumi.Input<String> subscriptionId;

  /// Creates a new [ADLSGen1FolderDataSetArgs].
  /// [accountName] The ADLS account name.
  /// [dataSetName] The name of the dataSet.
  /// [folderPath] The folder path within the ADLS account.
  /// [kind] Kind of data set.
  /// [resourceGroup] Resource group of ADLS account.
  /// [resourceGroupName] The resource group name.
  /// [shareName] The name of the share to add the data set to.
  /// [subscriptionId] Subscription id of ADLS account.
  ADLSGen1FolderDataSetArgs({
    required this.accountName,
    this.dataSetName,
    required this.folderPath,
    required this.kind,
    required this.resourceGroup,
    required this.resourceGroupName,
    required this.shareName,
    required this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'dataSetName': ?dataSetName,
      'folderPath': folderPath,
      'kind': kind,
      'resourceGroup': resourceGroup,
      'resourceGroupName': resourceGroupName,
      'shareName': shareName,
      'subscriptionId': subscriptionId,
    };
  }

  factory ADLSGen1FolderDataSetArgs.fromMap(Map<String, dynamic> map) {
    return ADLSGen1FolderDataSetArgs(
      accountName: (map['accountName'] as String).input(),
      dataSetName: map['dataSetName'] == null ? null : (map['dataSetName'] as String).input(),
      folderPath: (map['folderPath'] as String).input(),
      kind: (map['kind'] as String).input(),
      resourceGroup: (map['resourceGroup'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      shareName: (map['shareName'] as String).input(),
      subscriptionId: (map['subscriptionId'] as String).input(),
    );
  }
}

