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
    required this.accountName,
    this.dataSetName,
    required this.kind,
    required this.kustoClusterResourceId,
    required this.resourceGroupName,
    required this.shareName,
  });

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
      accountName: (map['accountName'] as String).input(),
      dataSetName: map['dataSetName'] == null ? null : (map['dataSetName']! as String).input(),
      kind: (map['kind'] as String).input(),
      kustoClusterResourceId: (map['kustoClusterResourceId'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      shareName: (map['shareName'] as String).input(),
    );
  }
}

