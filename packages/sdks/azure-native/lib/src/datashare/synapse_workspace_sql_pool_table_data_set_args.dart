// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_synapse_workspace_sql_pool_table_data_set_args_doc}
/// The set of arguments for SynapseWorkspaceSqlPoolTableDataSet.
/// {@endtemplate}
/// {@macro pulumi_datashare_synapse_workspace_sql_pool_table_data_set_args_doc}
class SynapseWorkspaceSqlPoolTableDataSetArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;
  /// The name of the dataSet.
  final pulumi.Input<String>? dataSetName;
  /// Kind of data set.
  /// Expected value is 'SynapseWorkspaceSqlPoolTable'.
  final pulumi.Input<String> kind;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the share to add the data set to.
  final pulumi.Input<String> shareName;
  /// Resource id of the Synapse Workspace SQL Pool Table
  final pulumi.Input<String> synapseWorkspaceSqlPoolTableResourceId;

  /// Creates a new [SynapseWorkspaceSqlPoolTableDataSetArgs].
  /// [accountName] The name of the share account.
  /// [dataSetName] The name of the dataSet.
  /// [kind] Kind of data set.
  /// [resourceGroupName] The resource group name.
  /// [shareName] The name of the share to add the data set to.
  /// [synapseWorkspaceSqlPoolTableResourceId] Resource id of the Synapse Workspace SQL Pool Table
  SynapseWorkspaceSqlPoolTableDataSetArgs({
    required this.accountName,
    this.dataSetName,
    required this.kind,
    required this.resourceGroupName,
    required this.shareName,
    required this.synapseWorkspaceSqlPoolTableResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'dataSetName': ?dataSetName,
      'kind': kind,
      'resourceGroupName': resourceGroupName,
      'shareName': shareName,
      'synapseWorkspaceSqlPoolTableResourceId': synapseWorkspaceSqlPoolTableResourceId,
    };
  }

  factory SynapseWorkspaceSqlPoolTableDataSetArgs.fromMap(Map<String, dynamic> map) {
    return SynapseWorkspaceSqlPoolTableDataSetArgs(
      accountName: (map['accountName'] as String).input(),
      dataSetName: map['dataSetName'] == null ? null : (map['dataSetName'] as String).input(),
      kind: (map['kind'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      shareName: (map['shareName'] as String).input(),
      synapseWorkspaceSqlPoolTableResourceId: (map['synapseWorkspaceSqlPoolTableResourceId'] as String).input(),
    );
  }
}

