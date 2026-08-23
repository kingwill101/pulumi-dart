// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTopic.
class GetTopicResult {
  /// ARN of the MSK topic.
  final String arn;
  final String clusterArn;
  /// Aggregated Kafka configuration in JSON format for the topic.
  final String configs;
  final String name;
  /// Number of partitions for the topic.
  final int partitionCount;
  final String region;
  /// Replication factor for the topic.
  final int replicationFactor;

  /// Creates a new [GetTopicResult].
  /// [arn] ARN of the MSK topic.
  /// [clusterArn] Required.
  /// [configs] Aggregated Kafka configuration in JSON format for the topic.
  /// [name] Required.
  /// [partitionCount] Number of partitions for the topic.
  /// [region] Required.
  /// [replicationFactor] Replication factor for the topic.
  const GetTopicResult({
    required this.arn,
    required this.clusterArn,
    required this.configs,
    required this.name,
    required this.partitionCount,
    required this.region,
    required this.replicationFactor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'clusterArn': clusterArn,
      'configs': configs,
      'name': name,
      'partitionCount': partitionCount,
      'region': region,
      'replicationFactor': replicationFactor,
    };
  }

  factory GetTopicResult.fromMap(Map<String, dynamic> map) {
    return GetTopicResult(
      arn: map['arn'] as String,
      clusterArn: map['clusterArn'] as String,
      configs: map['configs'] as String,
      name: map['name'] as String,
      partitionCount: map['partitionCount'] as int,
      region: map['region'] as String,
      replicationFactor: map['replicationFactor'] as int,
    );
  }
}
