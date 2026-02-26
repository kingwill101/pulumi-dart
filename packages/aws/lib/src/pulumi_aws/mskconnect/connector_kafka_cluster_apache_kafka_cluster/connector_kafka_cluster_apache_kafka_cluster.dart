// ignore_for_file: unused_element, unnecessary_cast

import '../connector_kafka_cluster_apache_kafka_cluster_vpc/connector_kafka_cluster_apache_kafka_cluster_vpc.dart';

class ConnectorKafkaClusterApacheKafkaCluster {
  /// The bootstrap servers of the cluster.
  final String bootstrapServers;

  /// Details of an Amazon VPC which has network connectivity to the Apache Kafka cluster. See <span pulumi-lang-nodejs="`vpc`" pulumi-lang-dotnet="`Vpc`" pulumi-lang-go="`vpc`" pulumi-lang-python="`vpc`" pulumi-lang-yaml="`vpc`" pulumi-lang-java="`vpc`">`vpc`</span> Block for details.
  final ConnectorKafkaClusterApacheKafkaClusterVpc vpc;

  ConnectorKafkaClusterApacheKafkaCluster({
    required this.bootstrapServers,
    required this.vpc,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bootstrapServers'] = bootstrapServers;
    map['vpc'] = vpc.toMap();
    return map;
  }

  factory ConnectorKafkaClusterApacheKafkaCluster.fromMap(
      Map<String, dynamic> map) {
    return ConnectorKafkaClusterApacheKafkaCluster(
      bootstrapServers: map['bootstrapServers'] as String,
      vpc: ConnectorKafkaClusterApacheKafkaClusterVpc.fromMap(
          (map['vpc'] as Map).cast<String, dynamic>()),
    );
  }
}
