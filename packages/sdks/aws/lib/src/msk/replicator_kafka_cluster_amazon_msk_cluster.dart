// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReplicatorKafkaClusterAmazonMskCluster {
  /// The ARN of an Amazon MSK cluster.
  final pulumi.Input<String> mskClusterArn;

  /// Creates a new [ReplicatorKafkaClusterAmazonMskCluster].
  /// [mskClusterArn] The ARN of an Amazon MSK cluster.
  const ReplicatorKafkaClusterAmazonMskCluster({
    required this.mskClusterArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mskClusterArn': mskClusterArn,
    };
  }

  factory ReplicatorKafkaClusterAmazonMskCluster.fromMap(Map<String, dynamic> map) {
    return ReplicatorKafkaClusterAmazonMskCluster(
      mskClusterArn: pulumi.Input.fromValue(map['mskClusterArn'] as String),
    );
  }
}
