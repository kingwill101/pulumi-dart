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
    required String accountName,
    required String dataSetId,
    String? dataSetMappingName,
    required String kind,
    required String resourceGroupName,
    required String shareSubscriptionName,
    required String synapseWorkspaceSqlPoolTableResourceId,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      dataSetId = pulumi.Input.asInput<String>(dataSetId),
      dataSetMappingName = pulumi.Input.asOptionalInput<String>(dataSetMappingName),
      kind = pulumi.Input.asInput<String>(kind),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      shareSubscriptionName = pulumi.Input.asInput<String>(shareSubscriptionName),
      synapseWorkspaceSqlPoolTableResourceId = pulumi.Input.asInput<String>(synapseWorkspaceSqlPoolTableResourceId);

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
      accountName: map['accountName'] as String,
      dataSetId: map['dataSetId'] as String,
      dataSetMappingName: map['dataSetMappingName'] == null ? null : map['dataSetMappingName'] as String,
      kind: map['kind'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      shareSubscriptionName: map['shareSubscriptionName'] as String,
      synapseWorkspaceSqlPoolTableResourceId: map['synapseWorkspaceSqlPoolTableResourceId'] as String,
    );
  }
}

