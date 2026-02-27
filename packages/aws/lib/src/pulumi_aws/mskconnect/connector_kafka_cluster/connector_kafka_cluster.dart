// ignore_for_file: unused_element, unnecessary_cast

import '../connector_kafka_cluster_apache_kafka_cluster/connector_kafka_cluster_apache_kafka_cluster.dart';

class ConnectorKafkaCluster {
  /// The Apache Kafka cluster to which the connector is connected. See `apache_kafka_cluster` Block for details.
  final ConnectorKafkaClusterApacheKafkaCluster apacheKafkaCluster;

  ConnectorKafkaCluster({
    required this.apacheKafkaCluster,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apacheKafkaCluster'] = apacheKafkaCluster.toMap();
    return map;
  }

  factory ConnectorKafkaCluster.fromMap(Map<String, dynamic> map) {
    return ConnectorKafkaCluster(
      apacheKafkaCluster: ConnectorKafkaClusterApacheKafkaCluster.fromMap(
          (map['apacheKafkaCluster'] as Map).cast<String, dynamic>()),
    );
  }
}
