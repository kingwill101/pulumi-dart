// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azuredatatransfer_list_list_pending_connection_args_doc}
/// Arguments for listListPendingConnection.
/// {@endtemplate}
/// {@macro pulumi_azuredatatransfer_list_list_pending_connection_args_doc}
class ListListPendingConnectionArgs {
  /// The name for the connection that is to be requested.
  final pulumi.Input<String> connectionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListListPendingConnectionArgs].
  /// [connectionName] The name for the connection that is to be requested.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListListPendingConnectionArgs({
    required this.connectionName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': connectionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListListPendingConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ListListPendingConnectionArgs(
      connectionName: pulumi.Input.fromValue(map['connectionName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

