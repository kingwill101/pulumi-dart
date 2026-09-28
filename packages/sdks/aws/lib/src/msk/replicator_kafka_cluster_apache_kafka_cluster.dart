// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReplicatorKafkaClusterApacheKafkaCluster {
  /// The Kafka `cluster.id` of the self-managed or on-premises Apache Kafka cluster (as reported by the cluster itself, e.g. via the Kafka admin tooling), not an arbitrary name. MSK Replicator validates this value against the source cluster. See [Migrate third-party and self-managed Apache Kafka clusters to Amazon MSK](https://aws.amazon.com/blogs/big-data/migrate-third-party-and-self-managed-apache-kafka-clusters-to-amazon-msk-express-and-standard-brokers-with-amazon-msk-replicator/) for how to obtain the cluster ID and the other required inputs.
  final pulumi.Input<String> apacheKafkaClusterId;
  /// The bootstrap broker connection string used to connect to the Apache Kafka cluster.
  final pulumi.Input<String> bootstrapBrokerString;

  /// Creates a new [ReplicatorKafkaClusterApacheKafkaCluster].
  /// [apacheKafkaClusterId] The Kafka `cluster.id` of the self-managed or on-premises Apache Kafka cluster (as reported by the cluster itself, e.g. via the Kafka admin tooling), not an arbitrary name. MSK Replicator validates this value against the source cluster. See [Migrate third-party and self-managed Apache Kafka clusters to Amazon MSK](https://aws.amazon.com/blogs/big-data/migrate-third-party-and-self-managed-apache-kafka-clusters-to-amazon-msk-express-and-standard-brokers-with-amazon-msk-replicator/) for how to obtain the cluster ID and the other required inputs.
  /// [bootstrapBrokerString] The bootstrap broker connection string used to connect to the Apache Kafka cluster.
  const ReplicatorKafkaClusterApacheKafkaCluster({
    required this.apacheKafkaClusterId,
    required this.bootstrapBrokerString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apacheKafkaClusterId': apacheKafkaClusterId,
      'bootstrapBrokerString': bootstrapBrokerString,
    };
  }

  factory ReplicatorKafkaClusterApacheKafkaCluster.fromMap(Map<String, dynamic> map) {
    return ReplicatorKafkaClusterApacheKafkaCluster(
      apacheKafkaClusterId: pulumi.Input.fromValue(map['apacheKafkaClusterId'] as String),
      bootstrapBrokerString: pulumi.Input.fromValue(map['bootstrapBrokerString'] as String),
    );
  }
}
