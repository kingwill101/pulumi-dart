// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_get_blob_data_set_args_doc}
/// Arguments for getBlobDataSet.
/// {@endtemplate}
/// {@macro pulumi_datashare_get_blob_data_set_args_doc}
class GetBlobDataSetArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;
  /// The name of the dataSet.
  final pulumi.Input<String> dataSetName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the share.
  final pulumi.Input<String> shareName;

  /// Creates a new [GetBlobDataSetArgs].
  /// [accountName] The name of the share account.
  /// [dataSetName] The name of the dataSet.
  /// [resourceGroupName] The resource group name.
  /// [shareName] The name of the share.
  GetBlobDataSetArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> dataSetName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> shareName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      dataSetName = pulumi.Input.asInput<String>(dataSetName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      shareName = pulumi.Input.asInput<String>(shareName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'dataSetName': dataSetName,
      'resourceGroupName': resourceGroupName,
      'shareName': shareName,
    };
  }

  factory GetBlobDataSetArgs.fromMap(Map<String, dynamic> map) {
    return GetBlobDataSetArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      dataSetName: pulumi.Output.create<String>(map['dataSetName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      shareName: pulumi.Output.create<String>(map['shareName'] as String),
    );
  }
}

