// ignore_for_file: unused_element, unnecessary_cast


class ReplicatorKafkaClusterAmazonMskCluster {
  /// The ARN of an Amazon MSK cluster.
  final String mskClusterArn;

  /// Creates a new [ReplicatorKafkaClusterAmazonMskCluster].
  /// [mskClusterArn] The ARN of an Amazon MSK cluster.
  ReplicatorKafkaClusterAmazonMskCluster({
    required this.mskClusterArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mskClusterArn': mskClusterArn,
    };
  }

  factory ReplicatorKafkaClusterAmazonMskCluster.fromMap(Map<String, dynamic> map) {
    return ReplicatorKafkaClusterAmazonMskCluster(
      mskClusterArn: map['mskClusterArn'] as String,
    );
  }
}

