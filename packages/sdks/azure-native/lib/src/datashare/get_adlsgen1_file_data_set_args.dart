// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_get_adlsgen1_file_data_set_args_doc}
/// Arguments for getADLSGen1FileDataSet.
/// {@endtemplate}
/// {@macro pulumi_datashare_get_adlsgen1_file_data_set_args_doc}
class GetADLSGen1FileDataSetArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;
  /// The name of the dataSet.
  final pulumi.Input<String> dataSetName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the share.
  final pulumi.Input<String> shareName;

  /// Creates a new [GetADLSGen1FileDataSetArgs].
  /// [accountName] The name of the share account.
  /// [dataSetName] The name of the dataSet.
  /// [resourceGroupName] The resource group name.
  /// [shareName] The name of the share.
  const GetADLSGen1FileDataSetArgs({
    required this.accountName,
    required this.dataSetName,
    required this.resourceGroupName,
    required this.shareName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'dataSetName': dataSetName,
      'resourceGroupName': resourceGroupName,
      'shareName': shareName,
    };
  }

  factory GetADLSGen1FileDataSetArgs.fromMap(Map<String, dynamic> map) {
    return GetADLSGen1FileDataSetArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      dataSetName: pulumi.Input.fromValue(map['dataSetName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      shareName: pulumi.Input.fromValue(map['shareName'] as String),
    );
  }
}
