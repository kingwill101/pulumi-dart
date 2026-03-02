// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_synapse_workspace_sql_pool_table_data_set_mapping_args_doc}
/// The set of arguments for SynapseWorkspaceSqlPoolTableDataSetMapping.
/// {@endtemplate}
/// {@macro pulumi_datashare_synapse_workspace_sql_pool_table_data_set_mapping_args_doc}
class SynapseWorkspaceSqlPoolTableDataSetMappingArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;
  /// The id of the source data set.
  final pulumi.Input<String> dataSetId;
  /// The name of the data set mapping to be created.
  final pulumi.Input<String>? dataSetMappingName;
  /// Kind of data set mapping.
  /// Expected value is 'SynapseWorkspaceSqlPoolTable'.
  final pulumi.Input<String> kind;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the share subscription which will hold the data set sink.
  final pulumi.Input<String> shareSubscriptionName;
  /// Resource id of the Synapse Workspace SQL Pool Table
  final pulumi.Input<String> synapseWorkspaceSqlPoolTableResourceId;

  /// Creates a new [SynapseWorkspaceSqlPoolTableDataSetMappingArgs].
  /// [accountName] The name of the share account.
  /// [dataSetId] The id of the source data set.
  /// [dataSetMappingName] The name of the data set mapping to be created.
  /// [kind] Kind of data set mapping.
  /// [resourceGroupName] The resource group name.
  /// [shareSubscriptionName] The name of the share subscription which will hold the data set sink.
  /// [synapseWorkspaceSqlPoolTableResourceId] Resource id of the Synapse Workspace SQL Pool Table
  SynapseWorkspaceSqlPoolTableDataSetMappingArgs({
    required this.accountName,
    required this.dataSetId,
    this.dataSetMappingName,
    required this.kind,
    required this.resourceGroupName,
    required this.shareSubscriptionName,
    required this.synapseWorkspaceSqlPoolTableResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'dataSetId': dataSetId,
      'dataSetMappingName': ?dataSetMappingName,
      'kind': kind,
      'resourceGroupName': resourceGroupName,
      'shareSubscriptionName': shareSubscriptionName,
      'synapseWorkspaceSqlPoolTableResourceId': synapseWorkspaceSqlPoolTableResourceId,
    };
  }

  factory SynapseWorkspaceSqlPoolTableDataSetMappingArgs.fromMap(Map<String, dynamic> map) {
    return SynapseWorkspaceSqlPoolTableDataSetMappingArgs(
      accountName: (map['accountName'] as String).input(),
      dataSetId: (map['dataSetId'] as String).input(),
      dataSetMappingName: map['dataSetMappingName'] == null ? null : (map['dataSetMappingName'] as String).input(),
      kind: (map['kind'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      shareSubscriptionName: (map['shareSubscriptionName'] as String).input(),
      synapseWorkspaceSqlPoolTableResourceId: (map['synapseWorkspaceSqlPoolTableResourceId'] as String).input(),
    );
  }
}

