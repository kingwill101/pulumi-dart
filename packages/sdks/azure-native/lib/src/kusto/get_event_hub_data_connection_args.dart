// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kusto_get_event_hub_data_connection_args_doc}
/// Arguments for getEventHubDataConnection.
/// {@endtemplate}
/// {@macro pulumi_kusto_get_event_hub_data_connection_args_doc}
class GetEventHubDataConnectionArgs {
  /// The name of the Kusto cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the data connection.
  final pulumi.Input<String> dataConnectionName;
  /// The name of the database in the Kusto cluster.
  final pulumi.Input<String> databaseName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEventHubDataConnectionArgs].
  /// [clusterName] The name of the Kusto cluster.
  /// [dataConnectionName] The name of the data connection.
  /// [databaseName] The name of the database in the Kusto cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetEventHubDataConnectionArgs({
    required this.clusterName,
    required this.dataConnectionName,
    required this.databaseName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'dataConnectionName': dataConnectionName,
      'databaseName': databaseName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEventHubDataConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetEventHubDataConnectionArgs(
      clusterName: (map['clusterName'] as String).input(),
      dataConnectionName: (map['dataConnectionName'] as String).input(),
      databaseName: (map['databaseName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

