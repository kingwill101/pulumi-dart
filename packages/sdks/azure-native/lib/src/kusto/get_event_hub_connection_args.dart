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
  GetEventHubConnectionArgs({
    required pulumi.Output<String> clusterName,
    required pulumi.Output<String> databaseName,
    required pulumi.Output<String> eventHubConnectionName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      eventHubConnectionName = pulumi.Input.asInput<String>(eventHubConnectionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      eventHubConnectionName: pulumi.Output.create<String>(map['eventHubConnectionName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

