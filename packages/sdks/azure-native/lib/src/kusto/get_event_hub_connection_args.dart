// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kusto_get_event_hub_connection_args_doc}
/// Arguments for getEventHubConnection.
/// {@endtemplate}
/// {@macro pulumi_kusto_get_event_hub_connection_args_doc}
class GetEventHubConnectionArgs {
  /// The name of the Kusto cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the database in the Kusto cluster.
  final pulumi.Input<String> databaseName;
  /// The name of the event hub connection.
  final pulumi.Input<String> eventHubConnectionName;
  /// The name of the resource group containing the Kusto cluster.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEventHubConnectionArgs].
  /// [clusterName] The name of the Kusto cluster.
  /// [databaseName] The name of the database in the Kusto cluster.
  /// [eventHubConnectionName] The name of the event hub connection.
  /// [resourceGroupName] The name of the resource group containing the Kusto cluster.
  const GetEventHubConnectionArgs({
    required this.clusterName,
    required this.databaseName,
    required this.eventHubConnectionName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'databaseName': databaseName,
      'eventHubConnectionName': eventHubConnectionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEventHubConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetEventHubConnectionArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      eventHubConnectionName: pulumi.Input.fromValue(map['eventHubConnectionName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

