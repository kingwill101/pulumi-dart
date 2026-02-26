// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../connector_task_restart_policy/connector_task_restart_policy.dart';

/// The set of arguments for Connector.
class ConnectorArgs {
  /// Connector config as keys/values. The keys of the map are connector property names, for example: `connector.class`, `tasks.max`, `key.converter`.
  final Input<Map<String, String>>? configs;

  /// The connect cluster name.
  final Input<String> connectCluster;

  /// The ID to use for the connector, which will become the final component of the connector's name. This value is structured like: `my-connector-id`.
  final Input<String> connectorId;

  /// ID of the location of the Kafka Connect resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// A policy that specifies how to restart the failed connectors/tasks in a Cluster resource. If not set, the failed connectors/tasks won't be restarted.
  /// Structure is documented below.
  final Input<ConnectorTaskRestartPolicy>? taskRestartPolicy;

  ConnectorArgs({
    this.configs,
    required this.connectCluster,
    required this.connectorId,
    required this.location,
    this.project,
    this.taskRestartPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final configsValue = configs;
    if (configsValue != null) {
      map['configs'] = configsValue;
    }
    map['connectCluster'] = connectCluster;
    map['connectorId'] = connectorId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final taskRestartPolicyValue = taskRestartPolicy;
    if (taskRestartPolicyValue != null) {
      map['taskRestartPolicy'] = Input.mapOptionalInputValue<
              ConnectorTaskRestartPolicy, Map<String, dynamic>>(
          taskRestartPolicyValue, (value) => value.toMap());
    }
    return map;
  }

  factory ConnectorArgs.fromMap(Map<String, dynamic> map) {
    return ConnectorArgs(
      configs: Input.asOptionalInput<Map<String, String>>(map['configs']),
      connectCluster: Input.asInput<String>(map['connectCluster']),
      connectorId: Input.asInput<String>(map['connectorId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      taskRestartPolicy: Input.asOptionalInput<ConnectorTaskRestartPolicy>(
          map['taskRestartPolicy']),
    );
  }
}
