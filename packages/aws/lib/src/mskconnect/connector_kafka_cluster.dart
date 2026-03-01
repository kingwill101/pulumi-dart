// ignore_for_file: unused_element, unnecessary_cast

import 'connector_kafka_cluster_apache_kafka_cluster.dart';

class ConnectorKafkaCluster {
  /// The Apache Kafka cluster to which the connector is connected. See `apache_kafka_cluster` Block for details.
  final ConnectorKafkaClusterApacheKafkaCluster apacheKafkaCluster;

  /// Creates a new [ConnectorKafkaCluster].
  /// [apacheKafkaCluster] The Apache Kafka cluster to which the connector is connected. See `apache_kafka_cluster` Block for details.
  ConnectorKafkaCluster({required this.apacheKafkaCluster});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'apacheKafkaCluster': apacheKafkaCluster.toMap()};
  }

  factory ConnectorKafkaCluster.fromMap(Map<String, dynamic> map) {
    return ConnectorKafkaCluster(
      apacheKafkaCluster: ConnectorKafkaClusterApacheKafkaCluster.fromMap(
        (map['apacheKafkaCluster'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
