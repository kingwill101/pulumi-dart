// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_kusto_cluster_data_set_args_doc}
/// The set of arguments for KustoClusterDataSet.
/// {@endtemplate}
/// {@macro pulumi_datashare_kusto_cluster_data_set_args_doc}
class KustoClusterDataSetArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;
  /// The name of the dataSet.
  final pulumi.Input<String>? dataSetName;
  /// Kind of data set.
  /// Expected value is 'KustoCluster'.
  final pulumi.Input<String> kind;
  /// Resource id of the kusto cluster.
  final pulumi.Input<String> kustoClusterResourceId;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the share to add the data set to.
  final pulumi.Input<String> shareName;

  /// Creates a new [KustoClusterDataSetArgs].
  /// [accountName] The name of the share account.
  /// [dataSetName] The name of the dataSet.
  /// [kind] Kind of data set.
  /// [kustoClusterResourceId] Resource id of the kusto cluster.
  /// [resourceGroupName] The resource group name.
  /// [shareName] The name of the share to add the data set to.
  KustoClusterDataSetArgs({
    required String accountName,
    String? dataSetName,
    required String kind,
    required String kustoClusterResourceId,
    required String resourceGroupName,
    required String shareName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      dataSetName = pulumi.Input.asOptionalInput<String>(dataSetName),
      kind = pulumi.Input.asInput<String>(kind),
      kustoClusterResourceId = pulumi.Input.asInput<String>(kustoClusterResourceId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      shareName = pulumi.Input.asInput<String>(shareName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'dataSetName': ?dataSetName,
      'kind': kind,
      'kustoClusterResourceId': kustoClusterResourceId,
      'resourceGroupName': resourceGroupName,
      'shareName': shareName,
    };
  }

  factory KustoClusterDataSetArgs.fromMap(Map<String, dynamic> map) {
    return KustoClusterDataSetArgs(
      accountName: map['accountName'] as String,
      dataSetName: map['dataSetName'] == null ? null : map['dataSetName'] as String,
      kind: map['kind'] as String,
      kustoClusterResourceId: map['kustoClusterResourceId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      shareName: map['shareName'] as String,
    );
  }
}

