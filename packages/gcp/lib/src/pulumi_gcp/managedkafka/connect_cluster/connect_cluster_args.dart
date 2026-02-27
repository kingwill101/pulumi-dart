// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../connect_cluster_capacity_config/connect_cluster_capacity_config.dart';
import '../connect_cluster_gcp_config/connect_cluster_gcp_config.dart';

/// The set of arguments for ConnectCluster.
class ConnectClusterArgs {
  /// A capacity configuration of a Kafka cluster.
  /// Structure is documented below.
  final pulumi.Input<ConnectClusterCapacityConfig> capacityConfig;

  /// The ID to use for the Connect Cluster, which will become the final component of the connect cluster's name. This value is structured like: `my-connect-cluster-id`.
  final pulumi.Input<String> connectClusterId;

  /// Configuration properties for a Kafka Connect cluster deployed to Google Cloud Platform.
  /// Structure is documented below.
  final pulumi.Input<ConnectClusterGcpConfig> gcpConfig;

  /// The name of the Kafka cluster this Kafka Connect cluster is attached to. Structured like: `projects/PROJECT_ID/locations/LOCATION/clusters/CLUSTER_ID`.
  final pulumi.Input<String> kafkaCluster;

  /// List of label KEY=VALUE pairs to add. Keys must start with a lowercase character and contain only hyphens (-), underscores ( ), lowercase characters, and numbers. Values must contain only hyphens (-), underscores ( ), lowercase characters, and numbers.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// ID of the location of the Kafka Connect resource. See https://cloud.google.com/managed-kafka/docs/locations for a list of supported locations.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  ConnectClusterArgs({
    required this.capacityConfig,
    required this.connectClusterId,
    required this.gcpConfig,
    required this.kafkaCluster,
    this.labels,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['capacityConfig'] = pulumi.Input.mapInputValue<
        ConnectClusterCapacityConfig,
        Map<String, dynamic>>(capacityConfig, (value) => value.toMap());
    map['connectClusterId'] = connectClusterId;
    map['gcpConfig'] = pulumi.Input.mapInputValue<ConnectClusterGcpConfig,
        Map<String, dynamic>>(gcpConfig, (value) => value.toMap());
    map['kafkaCluster'] = kafkaCluster;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory ConnectClusterArgs.fromMap(Map<String, dynamic> map) {
    return ConnectClusterArgs(
      capacityConfig: pulumi.Input.asInput<ConnectClusterCapacityConfig>(
          map['capacityConfig']),
      connectClusterId: pulumi.Input.asInput<String>(map['connectClusterId']),
      gcpConfig:
          pulumi.Input.asInput<ConnectClusterGcpConfig>(map['gcpConfig']),
      kafkaCluster: pulumi.Input.asInput<String>(map['kafkaCluster']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
