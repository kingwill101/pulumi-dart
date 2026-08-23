// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replicator_kafka_cluster_amazon_msk_cluster.dart';
import 'replicator_kafka_cluster_vpc_config.dart';

class ReplicatorKafkaCluster {
  /// Details of an Amazon MSK cluster.
  final pulumi.Input<ReplicatorKafkaClusterAmazonMskCluster> amazonMskCluster;
  /// Details of an Amazon VPC which has network connectivity to the Apache Kafka cluster.
  final pulumi.Input<ReplicatorKafkaClusterVpcConfig> vpcConfig;

  /// Creates a new [ReplicatorKafkaCluster].
  /// [amazonMskCluster] Details of an Amazon MSK cluster.
  /// [vpcConfig] Details of an Amazon VPC which has network connectivity to the Apache Kafka cluster.
  const ReplicatorKafkaCluster({
    required this.amazonMskCluster,
    required this.vpcConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amazonMskCluster': pulumi.Input.mapInputValue<ReplicatorKafkaClusterAmazonMskCluster, Map<String, dynamic>>(amazonMskCluster, (value) => value.toMap()),
      'vpcConfig': pulumi.Input.mapInputValue<ReplicatorKafkaClusterVpcConfig, Map<String, dynamic>>(vpcConfig, (value) => value.toMap()),
    };
  }

  factory ReplicatorKafkaCluster.fromMap(Map<String, dynamic> map) {
    return ReplicatorKafkaCluster(
      amazonMskCluster: pulumi.Input.fromValue(ReplicatorKafkaClusterAmazonMskCluster.fromMap((map['amazonMskCluster']! as Map).cast<String, dynamic>())),
      vpcConfig: pulumi.Input.fromValue(ReplicatorKafkaClusterVpcConfig.fromMap((map['vpcConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
