// ignore_for_file: unused_element, unnecessary_cast

import 'connector_kafka_cluster_apache_kafka_cluster_vpc.dart';

class ConnectorKafkaClusterApacheKafkaCluster {
  /// The bootstrap servers of the cluster.
  final String bootstrapServers;
  /// Details of an Amazon VPC which has network connectivity to the Apache Kafka cluster. See `vpc` Block for details.
  final ConnectorKafkaClusterApacheKafkaClusterVpc vpc;

  /// Creates a new [ConnectorKafkaClusterApacheKafkaCluster].
  /// [bootstrapServers] The bootstrap servers of the cluster.
  /// [vpc] Details of an Amazon VPC which has network connectivity to the Apache Kafka cluster. See `vpc` Block for details.
  ConnectorKafkaClusterApacheKafkaCluster({
    required this.bootstrapServers,
    required this.vpc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootstrapServers': bootstrapServers,
      'vpc': vpc.toMap(),
    };
  }

  factory ConnectorKafkaClusterApacheKafkaCluster.fromMap(Map<String, dynamic> map) {
    return ConnectorKafkaClusterApacheKafkaCluster(
      bootstrapServers: map['bootstrapServers'] as String,
      vpc: ConnectorKafkaClusterApacheKafkaClusterVpc.fromMap((map['vpc'] as Map).cast<String, dynamic>()),
    );
  }
}

