// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_kafka_cluster_apache_kafka_cluster.dart';

class ConnectorKafkaCluster {
  /// The Apache Kafka cluster to which the connector is connected. See `apache_kafka_cluster` Block for details.
  final pulumi.Input<ConnectorKafkaClusterApacheKafkaCluster> apacheKafkaCluster;

  /// Creates a new [ConnectorKafkaCluster].
  /// [apacheKafkaCluster] The Apache Kafka cluster to which the connector is connected. See `apache_kafka_cluster` Block for details.
  const ConnectorKafkaCluster({
    required this.apacheKafkaCluster,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apacheKafkaCluster': pulumi.Input.mapInputValue<ConnectorKafkaClusterApacheKafkaCluster, Map<String, dynamic>>(apacheKafkaCluster, (value) => value.toMap()),
    };
  }

  factory ConnectorKafkaCluster.fromMap(Map<String, dynamic> map) {
    return ConnectorKafkaCluster(
      apacheKafkaCluster: pulumi.Input.fromValue(ConnectorKafkaClusterApacheKafkaCluster.fromMap((map['apacheKafkaCluster']! as Map).cast<String, dynamic>())),
    );
  }
}

