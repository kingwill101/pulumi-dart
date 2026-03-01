// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_kusto_cluster_data_set_mapping_args_doc}
/// The set of arguments for KustoClusterDataSetMapping.
/// {@endtemplate}
/// {@macro pulumi_datashare_kusto_cluster_data_set_mapping_args_doc}
class KustoClusterDataSetMappingArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;
  /// The id of the source data set.
  final pulumi.Input<String> dataSetId;
  /// The name of the data set mapping to be created.
  final pulumi.Input<String>? dataSetMappingName;
  /// Kind of data set mapping.
  /// Expected value is 'KustoCluster'.
  final pulumi.Input<String> kind;
  /// Resource id of the sink kusto cluster.
  final pulumi.Input<String> kustoClusterResourceId;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the share subscription which will hold the data set sink.
  final pulumi.Input<String> shareSubscriptionName;

  /// Creates a new [KustoClusterDataSetMappingArgs].
  /// [accountName] The name of the share account.
  /// [dataSetId] The id of the source data set.
  /// [dataSetMappingName] The name of the data set mapping to be created.
  /// [kind] Kind of data set mapping.
  /// [kustoClusterResourceId] Resource id of the sink kusto cluster.
  /// [resourceGroupName] The resource group name.
  /// [shareSubscriptionName] The name of the share subscription which will hold the data set sink.
  KustoClusterDataSetMappingArgs({
    required String accountName,
    required String dataSetId,
    String? dataSetMappingName,
    required String kind,
    required String kustoClusterResourceId,
    required String resourceGroupName,
    required String shareSubscriptionName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      dataSetId = pulumi.Input.asInput<String>(dataSetId),
      dataSetMappingName = pulumi.Input.asOptionalInput<String>(dataSetMappingName),
      kind = pulumi.Input.asInput<String>(kind),
      kustoClusterResourceId = pulumi.Input.asInput<String>(kustoClusterResourceId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      shareSubscriptionName = pulumi.Input.asInput<String>(shareSubscriptionName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'dataSetId': dataSetId,
      'dataSetMappingName': ?dataSetMappingName,
      'kind': kind,
      'kustoClusterResourceId': kustoClusterResourceId,
      'resourceGroupName': resourceGroupName,
      'shareSubscriptionName': shareSubscriptionName,
    };
  }

  factory KustoClusterDataSetMappingArgs.fromMap(Map<String, dynamic> map) {
    return KustoClusterDataSetMappingArgs(
      accountName: map['accountName'] as String,
      dataSetId: map['dataSetId'] as String,
      dataSetMappingName: map['dataSetMappingName'] == null ? null : map['dataSetMappingName'] as String,
      kind: map['kind'] as String,
      kustoClusterResourceId: map['kustoClusterResourceId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      shareSubscriptionName: map['shareSubscriptionName'] as String,
    );
  }
}

