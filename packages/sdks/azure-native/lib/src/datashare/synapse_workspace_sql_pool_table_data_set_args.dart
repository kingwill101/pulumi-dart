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
    required pulumi.Output<String> accountName,
    pulumi.Output<String>? dataSetName,
    required pulumi.Output<String> kind,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> shareName,
    required pulumi.Output<String> synapseWorkspaceSqlPoolTableResourceId,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      dataSetName = pulumi.Input.asOptionalInput<String>(dataSetName),
      kind = pulumi.Input.asInput<String>(kind),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      shareName = pulumi.Input.asInput<String>(shareName),
      synapseWorkspaceSqlPoolTableResourceId = pulumi.Input.asInput<String>(synapseWorkspaceSqlPoolTableResourceId);

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
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      dataSetName: map['dataSetName'] == null ? null : pulumi.Output.create<String>(map['dataSetName'] as String),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      shareName: pulumi.Output.create<String>(map['shareName'] as String),
      synapseWorkspaceSqlPoolTableResourceId: pulumi.Output.create<String>(map['synapseWorkspaceSqlPoolTableResourceId'] as String),
    );
  }
}

