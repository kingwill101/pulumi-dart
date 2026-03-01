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
    required pulumi.Output<String> accountName,
    pulumi.Output<String>? dataSetName,
    required pulumi.Output<String> folderPath,
    required pulumi.Output<String> kind,
    required pulumi.Output<String> resourceGroup,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> shareName,
    required pulumi.Output<String> subscriptionId,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      dataSetName = pulumi.Input.asOptionalInput<String>(dataSetName),
      folderPath = pulumi.Input.asInput<String>(folderPath),
      kind = pulumi.Input.asInput<String>(kind),
      resourceGroup = pulumi.Input.asInput<String>(resourceGroup),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      shareName = pulumi.Input.asInput<String>(shareName),
      subscriptionId = pulumi.Input.asInput<String>(subscriptionId);

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
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      dataSetName: map['dataSetName'] == null ? null : pulumi.Output.create<String>(map['dataSetName'] as String),
      folderPath: pulumi.Output.create<String>(map['folderPath'] as String),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      resourceGroup: pulumi.Output.create<String>(map['resourceGroup'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      shareName: pulumi.Output.create<String>(map['shareName'] as String),
      subscriptionId: pulumi.Output.create<String>(map['subscriptionId'] as String),
    );
  }
}

