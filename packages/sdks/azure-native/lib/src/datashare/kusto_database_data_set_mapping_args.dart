// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_kusto_database_data_set_mapping_args_doc}
/// The set of arguments for KustoDatabaseDataSetMapping.
/// {@endtemplate}
/// {@macro pulumi_datashare_kusto_database_data_set_mapping_args_doc}
class KustoDatabaseDataSetMappingArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;

  /// The id of the source data set.
  final pulumi.Input<String> dataSetId;

  /// The name of the data set mapping to be created.
  final pulumi.Input<String>? dataSetMappingName;

  /// Kind of data set mapping.
  /// Expected value is 'KustoDatabase'.
  final pulumi.Input<String> kind;

  /// Resource id of the sink kusto cluster.
  final pulumi.Input<String> kustoClusterResourceId;

  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the share subscription which will hold the data set sink.
  final pulumi.Input<String> shareSubscriptionName;

  /// Creates a new [KustoDatabaseDataSetMappingArgs].
  /// [accountName] The name of the share account.
  /// [dataSetId] The id of the source data set.
  /// [dataSetMappingName] The name of the data set mapping to be created.
  /// [kind] Kind of data set mapping.
  /// [kustoClusterResourceId] Resource id of the sink kusto cluster.
  /// [resourceGroupName] The resource group name.
  /// [shareSubscriptionName] The name of the share subscription which will hold the data set sink.
  KustoDatabaseDataSetMappingArgs({
    required this.accountName,
    required this.dataSetId,
    this.dataSetMappingName,
    required this.kind,
    required this.kustoClusterResourceId,
    required this.resourceGroupName,
    required this.shareSubscriptionName,
  });

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

  factory KustoDatabaseDataSetMappingArgs.fromMap(Map<String, dynamic> map) {
    return KustoDatabaseDataSetMappingArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      dataSetId: pulumi.Input.fromValue(map['dataSetId'] as String),
      dataSetMappingName: (() {
        final guardedValue = map['dataSetMappingName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      kustoClusterResourceId: pulumi.Input.fromValue(
        map['kustoClusterResourceId'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      shareSubscriptionName: pulumi.Input.fromValue(
        map['shareSubscriptionName'] as String,
      ),
    );
  }
}
