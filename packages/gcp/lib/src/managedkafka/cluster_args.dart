// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_broker_capacity_config.dart';
import 'cluster_capacity_config.dart';
import 'cluster_gcp_config.dart';
import 'cluster_rebalance_config.dart';
import 'cluster_tls_config.dart';

/// {@template pulumi_managedkafka_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_managedkafka_cluster_cluster_args_doc}
class ClusterArgs {
  /// Capacity configuration at a per-broker level within the Kafka cluster. The config will be appled to each broker in the cluster.
  /// Structure is documented below.
  final pulumi.Input<ClusterBrokerCapacityConfig>? brokerCapacityConfig;

  /// A capacity configuration of a Kafka cluster.
  /// Structure is documented below.
  final pulumi.Input<ClusterCapacityConfig> capacityConfig;

  /// The ID to use for the cluster, which will become the final component of the cluster's name. The ID must be 1-63 characters long, and match the regular expression `a-z?` to comply with RFC 1035. This value is structured like: `my-cluster-id`.
  final pulumi.Input<String> clusterId;

  /// Configuration properties for a Kafka cluster deployed to Google Cloud Platform.
  /// Structure is documented below.
  final pulumi.Input<ClusterGcpConfig> gcpConfig;

  /// List of label KEY=VALUE pairs to add. Keys must start with a lowercase character and contain only hyphens (-), underscores ( ), lowercase characters, and numbers. Values must contain only hyphens (-), underscores ( ), lowercase characters, and numbers.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// ID of the location of the Kafka resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Defines rebalancing behavior of a Kafka cluster.
  /// Structure is documented below.
  final pulumi.Input<ClusterRebalanceConfig>? rebalanceConfig;

  /// TLS configuration for the Kafka cluster. This is used to configure mTLS authentication. To clear our a TLS configuration that has been previously set, please explicitly add an empty `tls_config` block.
  /// Structure is documented below.
  final pulumi.Input<ClusterTlsConfig>? tlsConfig;

  /// Creates a new [ClusterArgs].
  /// [brokerCapacityConfig] Capacity configuration at a per-broker level within the Kafka cluster. The config will be appled to each broker in the cluster.
  /// [capacityConfig] A capacity configuration of a Kafka cluster.
  /// [clusterId] The ID to use for the cluster, which will become the final component of the cluster's name. The ID must be 1-63 characters long, and match the regular expression `a-z?` to comply with RFC 1035. This value is structured like: `my-cluster-id`.
  /// [gcpConfig] Configuration properties for a Kafka cluster deployed to Google Cloud Platform.
  /// [labels] List of label KEY=VALUE pairs to add. Keys must start with a lowercase character and contain only hyphens (-), underscores ( ), lowercase characters, and numbers. Values must contain only hyphens (-), underscores ( ), lowercase characters, and numbers.
  /// [location] ID of the location of the Kafka resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  /// [project] The ID of the project in which the resource belongs.
  /// [rebalanceConfig] Defines rebalancing behavior of a Kafka cluster.
  /// [tlsConfig] TLS configuration for the Kafka cluster. This is used to configure mTLS authentication. To clear our a TLS configuration that has been previously set, please explicitly add an empty `tls_config` block.
  ClusterArgs({
    ClusterBrokerCapacityConfig? brokerCapacityConfig,
    required ClusterCapacityConfig capacityConfig,
    required String clusterId,
    required ClusterGcpConfig gcpConfig,
    Map<String, String>? labels,
    required String location,
    String? project,
    ClusterRebalanceConfig? rebalanceConfig,
    ClusterTlsConfig? tlsConfig,
  })  : brokerCapacityConfig =
            pulumi.Input.asOptionalInput<ClusterBrokerCapacityConfig>(
                brokerCapacityConfig),
        capacityConfig =
            pulumi.Input.asInput<ClusterCapacityConfig>(capacityConfig),
        clusterId = pulumi.Input.asInput<String>(clusterId),
        gcpConfig = pulumi.Input.asInput<ClusterGcpConfig>(gcpConfig),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        rebalanceConfig = pulumi.Input.asOptionalInput<ClusterRebalanceConfig>(
            rebalanceConfig),
        tlsConfig = pulumi.Input.asOptionalInput<ClusterTlsConfig>(tlsConfig);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final brokerCapacityConfigValue = brokerCapacityConfig;
    if (brokerCapacityConfigValue != null) {
      map['brokerCapacityConfig'] = pulumi.Input.mapOptionalInputValue<
              ClusterBrokerCapacityConfig, Map<String, dynamic>>(
          brokerCapacityConfigValue, (value) => value.toMap());
    }
    map['capacityConfig'] =
        pulumi.Input.mapInputValue<ClusterCapacityConfig, Map<String, dynamic>>(
            capacityConfig, (value) => value.toMap());
    map['clusterId'] = clusterId;
    map['gcpConfig'] =
        pulumi.Input.mapInputValue<ClusterGcpConfig, Map<String, dynamic>>(
            gcpConfig, (value) => value.toMap());
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final rebalanceConfigValue = rebalanceConfig;
    if (rebalanceConfigValue != null) {
      map['rebalanceConfig'] = pulumi.Input.mapOptionalInputValue<
          ClusterRebalanceConfig,
          Map<String, dynamic>>(rebalanceConfigValue, (value) => value.toMap());
    }
    final tlsConfigValue = tlsConfig;
    if (tlsConfigValue != null) {
      map['tlsConfig'] = pulumi.Input.mapOptionalInputValue<ClusterTlsConfig,
          Map<String, dynamic>>(tlsConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      brokerCapacityConfig: map['brokerCapacityConfig'] == null
          ? null
          : ClusterBrokerCapacityConfig.fromMap(
              (map['brokerCapacityConfig'] as Map).cast<String, dynamic>()),
      capacityConfig: ClusterCapacityConfig.fromMap(
          (map['capacityConfig'] as Map).cast<String, dynamic>()),
      clusterId: map['clusterId'] as String,
      gcpConfig: ClusterGcpConfig.fromMap(
          (map['gcpConfig'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      rebalanceConfig: map['rebalanceConfig'] == null
          ? null
          : ClusterRebalanceConfig.fromMap(
              (map['rebalanceConfig'] as Map).cast<String, dynamic>()),
      tlsConfig: map['tlsConfig'] == null
          ? null
          : ClusterTlsConfig.fromMap(
              (map['tlsConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
