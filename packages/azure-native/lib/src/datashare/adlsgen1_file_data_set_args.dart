// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_adlsgen1_file_data_set_args_doc}
/// The set of arguments for ADLSGen1FileDataSet.
/// {@endtemplate}
/// {@macro pulumi_datashare_adlsgen1_file_data_set_args_doc}
class ADLSGen1FileDataSetArgs {
  /// The ADLS account name.
  final pulumi.Input<String> accountName;
  /// The name of the dataSet.
  final pulumi.Input<String>? dataSetName;
  /// The file name in the ADLS account.
  final pulumi.Input<String> fileName;
  /// The folder path within the ADLS account.
  final pulumi.Input<String> folderPath;
  /// Kind of data set.
  /// Expected value is 'AdlsGen1File'.
  final pulumi.Input<String> kind;
  /// Resource group of ADLS account.
  final pulumi.Input<String> resourceGroup;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the share to add the data set to.
  final pulumi.Input<String> shareName;
  /// Subscription id of ADLS account.
  final pulumi.Input<String> subscriptionId;

  /// Creates a new [ADLSGen1FileDataSetArgs].
  /// [accountName] The ADLS account name.
  /// [dataSetName] The name of the dataSet.
  /// [fileName] The file name in the ADLS account.
  /// [folderPath] The folder path within the ADLS account.
  /// [kind] Kind of data set.
  /// [resourceGroup] Resource group of ADLS account.
  /// [resourceGroupName] The resource group name.
  /// [shareName] The name of the share to add the data set to.
  /// [subscriptionId] Subscription id of ADLS account.
  ADLSGen1FileDataSetArgs({
    required String accountName,
    String? dataSetName,
    required String fileName,
    required String folderPath,
    required String kind,
    required String resourceGroup,
    required String resourceGroupName,
    required String shareName,
    required String subscriptionId,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      dataSetName = pulumi.Input.asOptionalInput<String>(dataSetName),
      fileName = pulumi.Input.asInput<String>(fileName),
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
      'fileName': fileName,
      'folderPath': folderPath,
      'kind': kind,
      'resourceGroup': resourceGroup,
      'resourceGroupName': resourceGroupName,
      'shareName': shareName,
      'subscriptionId': subscriptionId,
    };
  }

  factory ADLSGen1FileDataSetArgs.fromMap(Map<String, dynamic> map) {
    return ADLSGen1FileDataSetArgs(
      accountName: map['accountName'] as String,
      dataSetName: map['dataSetName'] == null ? null : map['dataSetName'] as String,
      fileName: map['fileName'] as String,
      folderPath: map['folderPath'] as String,
      kind: map['kind'] as String,
      resourceGroup: map['resourceGroup'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      shareName: map['shareName'] as String,
      subscriptionId: map['subscriptionId'] as String,
    );
  }
}

