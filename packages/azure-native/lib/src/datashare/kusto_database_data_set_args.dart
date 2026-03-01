// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_kusto_database_data_set_args_doc}
/// The set of arguments for KustoDatabaseDataSet.
/// {@endtemplate}
/// {@macro pulumi_datashare_kusto_database_data_set_args_doc}
class KustoDatabaseDataSetArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;
  /// The name of the dataSet.
  final pulumi.Input<String>? dataSetName;
  /// Kind of data set.
  /// Expected value is 'KustoDatabase'.
  final pulumi.Input<String> kind;
  /// Resource id of the kusto database.
  final pulumi.Input<String> kustoDatabaseResourceId;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the share to add the data set to.
  final pulumi.Input<String> shareName;

  /// Creates a new [KustoDatabaseDataSetArgs].
  /// [accountName] The name of the share account.
  /// [dataSetName] The name of the dataSet.
  /// [kind] Kind of data set.
  /// [kustoDatabaseResourceId] Resource id of the kusto database.
  /// [resourceGroupName] The resource group name.
  /// [shareName] The name of the share to add the data set to.
  KustoDatabaseDataSetArgs({
    required String accountName,
    String? dataSetName,
    required String kind,
    required String kustoDatabaseResourceId,
    required String resourceGroupName,
    required String shareName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      dataSetName = pulumi.Input.asOptionalInput<String>(dataSetName),
      kind = pulumi.Input.asInput<String>(kind),
      kustoDatabaseResourceId = pulumi.Input.asInput<String>(kustoDatabaseResourceId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      shareName = pulumi.Input.asInput<String>(shareName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'dataSetName': ?dataSetName,
      'kind': kind,
      'kustoDatabaseResourceId': kustoDatabaseResourceId,
      'resourceGroupName': resourceGroupName,
      'shareName': shareName,
    };
  }

  factory KustoDatabaseDataSetArgs.fromMap(Map<String, dynamic> map) {
    return KustoDatabaseDataSetArgs(
      accountName: map['accountName'] as String,
      dataSetName: map['dataSetName'] == null ? null : map['dataSetName'] as String,
      kind: map['kind'] as String,
      kustoDatabaseResourceId: map['kustoDatabaseResourceId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      shareName: map['shareName'] as String,
    );
  }
}

