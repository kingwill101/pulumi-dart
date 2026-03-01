// ignore_for_file: unused_element, unnecessary_cast

import 'replicator_kafka_cluster_amazon_msk_cluster.dart';
import 'replicator_kafka_cluster_vpc_config.dart';

class ReplicatorKafkaCluster {
  /// Details of an Amazon MSK cluster.
  final ReplicatorKafkaClusterAmazonMskCluster amazonMskCluster;
  /// Details of an Amazon VPC which has network connectivity to the Apache Kafka cluster.
  final ReplicatorKafkaClusterVpcConfig vpcConfig;

  /// Creates a new [ReplicatorKafkaCluster].
  /// [amazonMskCluster] Details of an Amazon MSK cluster.
  /// [vpcConfig] Details of an Amazon VPC which has network connectivity to the Apache Kafka cluster.
  ReplicatorKafkaCluster({
    required this.amazonMskCluster,
    required this.vpcConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amazonMskCluster': amazonMskCluster.toMap(),
      'vpcConfig': vpcConfig.toMap(),
    };
  }

  factory ReplicatorKafkaCluster.fromMap(Map<String, dynamic> map) {
    return ReplicatorKafkaCluster(
      amazonMskCluster: ReplicatorKafkaClusterAmazonMskCluster.fromMap((map['amazonMskCluster'] as Map).cast<String, dynamic>()),
      vpcConfig: ReplicatorKafkaClusterVpcConfig.fromMap((map['vpcConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

