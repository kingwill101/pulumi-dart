// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_get_adlsgen2_folder_data_set_args_doc}
/// Arguments for getADLSGen2FolderDataSet.
/// {@endtemplate}
/// {@macro pulumi_datashare_get_adlsgen2_folder_data_set_args_doc}
class GetADLSGen2FolderDataSetArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;
  /// The name of the dataSet.
  final pulumi.Input<String> dataSetName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the share.
  final pulumi.Input<String> shareName;

  /// Creates a new [GetADLSGen2FolderDataSetArgs].
  /// [accountName] The name of the share account.
  /// [dataSetName] The name of the dataSet.
  /// [resourceGroupName] The resource group name.
  /// [shareName] The name of the share.
  GetADLSGen2FolderDataSetArgs({
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

  factory GetADLSGen2FolderDataSetArgs.fromMap(Map<String, dynamic> map) {
    return GetADLSGen2FolderDataSetArgs(
      accountName: (map['accountName'] as String).input(),
      dataSetName: (map['dataSetName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      shareName: (map['shareName'] as String).input(),
    );
  }
}

