// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_kafka_cluster_apache_kafka_cluster_vpc.dart';

class ConnectorKafkaClusterApacheKafkaCluster {
  /// The bootstrap servers of the cluster.
  final pulumi.Input<String> bootstrapServers;
  /// Details of an Amazon VPC which has network connectivity to the Apache Kafka cluster. See `vpc` Block for details.
  final pulumi.Input<ConnectorKafkaClusterApacheKafkaClusterVpc> vpc;

  /// Creates a new [ConnectorKafkaClusterApacheKafkaCluster].
  /// [bootstrapServers] The bootstrap servers of the cluster.
  /// [vpc] Details of an Amazon VPC which has network connectivity to the Apache Kafka cluster. See `vpc` Block for details.
  const ConnectorKafkaClusterApacheKafkaCluster({
    required this.bootstrapServers,
    required this.vpc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootstrapServers': bootstrapServers,
      'vpc': pulumi.Input.mapInputValue<ConnectorKafkaClusterApacheKafkaClusterVpc, Map<String, dynamic>>(vpc, (value) => value.toMap()),
    };
  }

  factory ConnectorKafkaClusterApacheKafkaCluster.fromMap(Map<String, dynamic> map) {
    return ConnectorKafkaClusterApacheKafkaCluster(
      bootstrapServers: pulumi.Input.fromValue(map['bootstrapServers'] as String),
      vpc: pulumi.Input.fromValue(ConnectorKafkaClusterApacheKafkaClusterVpc.fromMap((map['vpc']! as Map).cast<String, dynamic>())),
    );
  }
}

