// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replicator_kafka_cluster_amazon_msk_cluster.dart';
import 'replicator_kafka_cluster_apache_kafka_cluster.dart';
import 'replicator_kafka_cluster_client_authentication.dart';
import 'replicator_kafka_cluster_encryption_in_transit.dart';
import 'replicator_kafka_cluster_vpc_config.dart';

class ReplicatorKafkaCluster {
  /// Details of an Amazon MSK cluster. Exactly one of `amazonMskCluster` or `apacheKafkaCluster` must be specified. Detailed below.
  final pulumi.Input<ReplicatorKafkaClusterAmazonMskCluster?>? amazonMskCluster;
  /// Details of a self-managed or on-premises Apache Kafka cluster. Exactly one of `amazonMskCluster` or `apacheKafkaCluster` must be specified. Detailed below.
  final pulumi.Input<ReplicatorKafkaClusterApacheKafkaCluster?>? apacheKafkaCluster;
  /// Details of the client authentication used by the Kafka cluster. Only valid for an `apacheKafkaCluster`. Detailed below.
  final pulumi.Input<ReplicatorKafkaClusterClientAuthentication?>? clientAuthentication;
  /// Details of encryption in transit to the Kafka cluster. Only valid for an `apacheKafkaCluster`. TLS encryption in transit is always applied to an `apacheKafkaCluster`; this block is only required to supply a custom root CA chain (for a cluster using a private or self-signed certificate). Detailed below.
  final pulumi.Input<ReplicatorKafkaClusterEncryptionInTransit?>? encryptionInTransit;
  /// Details of an Amazon VPC which has network connectivity to the Kafka cluster. Provide this on the `amazonMskCluster` entry only; the replicator reaches the Apache Kafka cluster through that VPC.
  final pulumi.Input<ReplicatorKafkaClusterVpcConfig?>? vpcConfig;

  /// Creates a new [ReplicatorKafkaCluster].
  /// [amazonMskCluster] Details of an Amazon MSK cluster. Exactly one of `amazonMskCluster` or `apacheKafkaCluster` must be specified. Detailed below.
  /// [apacheKafkaCluster] Details of a self-managed or on-premises Apache Kafka cluster. Exactly one of `amazonMskCluster` or `apacheKafkaCluster` must be specified. Detailed below.
  /// [clientAuthentication] Details of the client authentication used by the Kafka cluster. Only valid for an `apacheKafkaCluster`. Detailed below.
  /// [encryptionInTransit] Details of encryption in transit to the Kafka cluster. Only valid for an `apacheKafkaCluster`. TLS encryption in transit is always applied to an `apacheKafkaCluster`; this block is only required to supply a custom root CA chain (for a cluster using a private or self-signed certificate). Detailed below.
  /// [vpcConfig] Details of an Amazon VPC which has network connectivity to the Kafka cluster. Provide this on the `amazonMskCluster` entry only; the replicator reaches the Apache Kafka cluster through that VPC.
  const ReplicatorKafkaCluster({
    this.amazonMskCluster,
    this.apacheKafkaCluster,
    this.clientAuthentication,
    this.encryptionInTransit,
    this.vpcConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amazonMskCluster': ?pulumi.Input.mapOptionalInputValue<ReplicatorKafkaClusterAmazonMskCluster, Map<String, dynamic>>(amazonMskCluster, (value) => value.toMap()),
      'apacheKafkaCluster': ?pulumi.Input.mapOptionalInputValue<ReplicatorKafkaClusterApacheKafkaCluster, Map<String, dynamic>>(apacheKafkaCluster, (value) => value.toMap()),
      'clientAuthentication': ?pulumi.Input.mapOptionalInputValue<ReplicatorKafkaClusterClientAuthentication, Map<String, dynamic>>(clientAuthentication, (value) => value.toMap()),
      'encryptionInTransit': ?pulumi.Input.mapOptionalInputValue<ReplicatorKafkaClusterEncryptionInTransit, Map<String, dynamic>>(encryptionInTransit, (value) => value.toMap()),
      'vpcConfig': ?pulumi.Input.mapOptionalInputValue<ReplicatorKafkaClusterVpcConfig, Map<String, dynamic>>(vpcConfig, (value) => value.toMap()),
    };
  }

  factory ReplicatorKafkaCluster.fromMap(Map<String, dynamic> map) {
    return ReplicatorKafkaCluster(
      amazonMskCluster: (() { final guardedValue = map['amazonMskCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReplicatorKafkaClusterAmazonMskCluster.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      apacheKafkaCluster: (() { final guardedValue = map['apacheKafkaCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReplicatorKafkaClusterApacheKafkaCluster.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clientAuthentication: (() { final guardedValue = map['clientAuthentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReplicatorKafkaClusterClientAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      encryptionInTransit: (() { final guardedValue = map['encryptionInTransit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReplicatorKafkaClusterEncryptionInTransit.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpcConfig: (() { final guardedValue = map['vpcConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReplicatorKafkaClusterVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
