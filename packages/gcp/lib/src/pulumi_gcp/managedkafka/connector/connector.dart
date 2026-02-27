import 'package:pulumi/pulumi.dart' as pulumi;
import '../connector_task_restart_policy/connector_task_restart_policy.dart';
import 'connector_args.dart';

/// A Managed Service for Kafka Connect Connectors.
///
///
///
/// ## Example Usage
///
/// ### Managedkafka Connector Basic
///
///
///
///
/// ## Import
///
/// Connector can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/connectClusters/{{connect_cluster}}/connectors/{{connector_id}}`
///
/// * `{{project}}/{{location}}/{{connect_cluster}}/{{connector_id}}`
///
/// * `{{location}}/{{connect_cluster}}/{{connector_id}}`
///
/// When using the `pulumi import` command, Connector can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:managedkafka/connector:Connector default projects/{{project}}/locations/{{location}}/connectClusters/{{connect_cluster}}/connectors/{{connector_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:managedkafka/connector:Connector default {{project}}/{{location}}/{{connect_cluster}}/{{connector_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:managedkafka/connector:Connector default {{location}}/{{connect_cluster}}/{{connector_id}}
/// ```
class Connector extends pulumi.CustomResource {
  /// Connector config as keys/values. The keys of the map are connector property names, for example: `connector.class`, `tasks.max`, `key.converter`.
  late final pulumi.Output<Map<String, String>?> configs;

  /// The connect cluster name.
  late final pulumi.Output<String> connectCluster;

  /// The ID to use for the connector, which will become the final component of the connector's name. This value is structured like: `my-connector-id`.
  late final pulumi.Output<String> connectorId;

  /// ID of the location of the Kafka Connect resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  late final pulumi.Output<String> location;

  /// The name of the connector. The `connector` segment is used when connecting directly to the connect cluster. Structured like: `projects/PROJECT_ID/locations/LOCATION/connectClusters/CONNECT_CLUSTER/connectors/CONNECTOR_ID`.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The current state of the connect. Possible values: `STATE_UNSPECIFIED`, `UNASSIGNED`, `RUNNING`, `PAUSED`, `FAILED`, `RESTARTING`, and `STOPPED`.
  late final pulumi.Output<String> state;

  /// A policy that specifies how to restart the failed connectors/tasks in a Cluster resource. If not set, the failed connectors/tasks won't be restarted.
  /// Structure is documented below.
  late final pulumi.Output<ConnectorTaskRestartPolicy?> taskRestartPolicy;

  Connector(
    String name, {
    ConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:managedkafka/connector:Connector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.configs = registerOutput<Map<String, String>?>('configs');
    this.connectCluster = registerOutput<String>('connectCluster');
    this.connectorId = registerOutput<String>('connectorId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    this.taskRestartPolicy =
        registerOutput<ConnectorTaskRestartPolicy?>('taskRestartPolicy');
  }
}
