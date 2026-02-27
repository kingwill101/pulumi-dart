import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_broker_capacity_config/cluster_broker_capacity_config.dart';
import '../cluster_capacity_config/cluster_capacity_config.dart';
import '../cluster_gcp_config/cluster_gcp_config.dart';
import '../cluster_rebalance_config/cluster_rebalance_config.dart';
import '../cluster_tls_config/cluster_tls_config.dart';
import 'cluster_managedkafka_args.dart';

/// A Managed Service for Apache Kafka cluster. Apache Kafka is a trademark owned by the Apache Software Foundation.
///
///
///
/// ## Example Usage
///
/// ### Managedkafka Cluster Basic
///
///
///
/// ### Managedkafka Cluster Mtls
///
///
///
/// ### Managedkafka Cluster Cmek
///
///
///
///
/// ## Import
///
/// Cluster can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/clusters/{{cluster_id}}`
///
/// * `{{project}}/{{location}}/{{cluster_id}}`
///
/// * `{{location}}/{{cluster_id}}`
///
/// When using the `pulumi import` command, Cluster can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:managedkafka/cluster:Cluster default projects/{{project}}/locations/{{location}}/clusters/{{cluster_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:managedkafka/cluster:Cluster default {{project}}/{{location}}/{{cluster_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:managedkafka/cluster:Cluster default {{location}}/{{cluster_id}}
/// ```
class ClusterManagedkafka extends pulumi.CustomResource {
  /// Capacity configuration at a per-broker level within the Kafka cluster. The config will be appled to each broker in the cluster.
  /// Structure is documented below.
  late final pulumi.Output<ClusterBrokerCapacityConfig?> brokerCapacityConfig;

  /// A capacity configuration of a Kafka cluster.
  /// Structure is documented below.
  late final pulumi.Output<ClusterCapacityConfig> capacityConfig;

  /// The ID to use for the cluster, which will become the final component of the cluster's name. The ID must be 1-63 characters long, and match the regular expression `a-z?` to comply with RFC 1035. This value is structured like: `my-cluster-id`.
  late final pulumi.Output<String> clusterId;

  /// The time when the cluster was created.
  late final pulumi.Output<String> createTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Configuration properties for a Kafka cluster deployed to Google Cloud Platform.
  /// Structure is documented below.
  late final pulumi.Output<ClusterGcpConfig> gcpConfig;

  /// List of label KEY=VALUE pairs to add. Keys must start with a lowercase character and contain only hyphens (-), underscores ( ), lowercase characters, and numbers. Values must contain only hyphens (-), underscores ( ), lowercase characters, and numbers.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// ID of the location of the Kafka resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  late final pulumi.Output<String> location;

  /// The name of the cluster. Structured like: `projects/PROJECT_ID/locations/LOCATION/clusters/CLUSTER_ID`.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Defines rebalancing behavior of a Kafka cluster.
  /// Structure is documented below.
  late final pulumi.Output<ClusterRebalanceConfig?> rebalanceConfig;

  /// The current state of the cluster. Possible values: `STATE_UNSPECIFIED`, `CREATING`, `ACTIVE`, `DELETING`.
  late final pulumi.Output<String> state;

  /// TLS configuration for the Kafka cluster. This is used to configure mTLS authentication. To clear our a TLS configuration that has been previously set, please explicitly add an empty `tls_config` block.
  /// Structure is documented below.
  late final pulumi.Output<ClusterTlsConfig> tlsConfig;

  /// The time when the cluster was last updated.
  late final pulumi.Output<String> updateTime;

  ClusterManagedkafka(
    String name, {
    ClusterManagedkafkaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:managedkafka/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.brokerCapacityConfig =
        registerOutput<ClusterBrokerCapacityConfig?>('brokerCapacityConfig');
    this.capacityConfig =
        registerOutput<ClusterCapacityConfig>('capacityConfig');
    this.clusterId = registerOutput<String>('clusterId');
    this.createTime = registerOutput<String>('createTime');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.gcpConfig = registerOutput<ClusterGcpConfig>('gcpConfig');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.rebalanceConfig =
        registerOutput<ClusterRebalanceConfig?>('rebalanceConfig');
    this.state = registerOutput<String>('state');
    this.tlsConfig = registerOutput<ClusterTlsConfig>('tlsConfig');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
