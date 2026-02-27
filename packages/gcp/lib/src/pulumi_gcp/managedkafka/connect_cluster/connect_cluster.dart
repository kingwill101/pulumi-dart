import 'package:pulumi/pulumi.dart';
import '../connect_cluster_capacity_config/connect_cluster_capacity_config.dart';
import '../connect_cluster_gcp_config/connect_cluster_gcp_config.dart';
import 'connect_cluster_args.dart';

/// A Managed Service for Kafka Connect cluster.
///
///
///
/// ## Example Usage
///
/// ### Managedkafka Connect Cluster Basic
///
///
///
///
/// ## Import
///
/// ConnectCluster can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/connectClusters/{{connect_cluster_id}}`
///
/// * `{{project}}/{{location}}/{{connect_cluster_id}}`
///
/// * `{{location}}/{{connect_cluster_id}}`
///
/// When using the `pulumi import` command, ConnectCluster can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:managedkafka/connectCluster:ConnectCluster default projects/{{project}}/locations/{{location}}/connectClusters/{{connect_cluster_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:managedkafka/connectCluster:ConnectCluster default {{project}}/{{location}}/{{connect_cluster_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:managedkafka/connectCluster:ConnectCluster default {{location}}/{{connect_cluster_id}}
/// ```
class ConnectCluster extends CustomResource {
  /// A capacity configuration of a Kafka cluster.
  /// Structure is documented below.
  late final Output<ConnectClusterCapacityConfig> capacityConfig;

  /// The ID to use for the Connect Cluster, which will become the final component of the connect cluster's name. This value is structured like: `my-connect-cluster-id`.
  late final Output<String> connectClusterId;

  /// The time when the cluster was created.
  late final Output<String> createTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Configuration properties for a Kafka Connect cluster deployed to Google Cloud Platform.
  /// Structure is documented below.
  late final Output<ConnectClusterGcpConfig> gcpConfig;

  /// The name of the Kafka cluster this Kafka Connect cluster is attached to. Structured like: `projects/PROJECT_ID/locations/LOCATION/clusters/CLUSTER_ID`.
  late final Output<String> kafkaCluster;

  /// List of label KEY=VALUE pairs to add. Keys must start with a lowercase character and contain only hyphens (-), underscores ( ), lowercase characters, and numbers. Values must contain only hyphens (-), underscores ( ), lowercase characters, and numbers.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// ID of the location of the Kafka Connect resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  late final Output<String> location;

  /// The name of the connect cluster. Structured like: `projects/PROJECT_ID/locations/LOCATION/connectClusters/CONNECT_CLUSTER_ID`.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The current state of the connect cluster. Possible values: `STATE_UNSPECIFIED`, `CREATING`, `ACTIVE`, `DELETING`.
  late final Output<String> state;

  /// The time when the cluster was last updated.
  late final Output<String> updateTime;

  ConnectCluster(
    String name, {
    ConnectClusterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:managedkafka/connectCluster:ConnectCluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.capacityConfig =
        registerOutput<ConnectClusterCapacityConfig>('capacityConfig');
    this.connectClusterId = registerOutput<String>('connectClusterId');
    this.createTime = registerOutput<String>('createTime');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.gcpConfig = registerOutput<ConnectClusterGcpConfig>('gcpConfig');
    this.kafkaCluster = registerOutput<String>('kafkaCluster');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
