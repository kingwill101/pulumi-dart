// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_connection_rai_blocklist_item_args_doc}
/// Arguments for getConnectionRaiBlocklistItem.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_connection_rai_blocklist_item_args_doc}
class GetConnectionRaiBlocklistItemArgs {
  /// Friendly name of the workspace connection
  final pulumi.Input<String> connectionName;
  /// Name of the RaiBlocklist Item
  final pulumi.Input<String> raiBlocklistItemName;
  /// The name of the RaiBlocklist.
  final pulumi.Input<String> raiBlocklistName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Azure Machine Learning Workspace Name
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetConnectionRaiBlocklistItemArgs].
  /// [connectionName] Friendly name of the workspace connection
  /// [raiBlocklistItemName] Name of the RaiBlocklist Item
  /// [raiBlocklistName] The name of the RaiBlocklist.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Azure Machine Learning Workspace Name
  GetConnectionRaiBlocklistItemArgs({
    required pulumi.Output<String> connectionName,
    required pulumi.Output<String> raiBlocklistItemName,
    required pulumi.Output<String> raiBlocklistName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      connectionName = pulumi.Input.asInput<String>(connectionName),
      raiBlocklistItemName = pulumi.Input.asInput<String>(raiBlocklistItemName),
      raiBlocklistName = pulumi.Input.asInput<String>(raiBlocklistName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': connectionName,
      'raiBlocklistItemName': raiBlocklistItemName,
      'raiBlocklistName': raiBlocklistName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetConnectionRaiBlocklistItemArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectionRaiBlocklistItemArgs(
      connectionName: pulumi.Output.create<String>(map['connectionName'] as String),
      raiBlocklistItemName: pulumi.Output.create<String>(map['raiBlocklistItemName'] as String),
      raiBlocklistName: pulumi.Output.create<String>(map['raiBlocklistName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

