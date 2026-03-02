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
    required this.connectionName,
    required this.raiBlocklistItemName,
    required this.raiBlocklistName,
    required this.resourceGroupName,
    required this.workspaceName,
  });

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
      connectionName: (map['connectionName'] as String).input(),
      raiBlocklistItemName: (map['raiBlocklistItemName'] as String).input(),
      raiBlocklistName: (map['raiBlocklistName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

