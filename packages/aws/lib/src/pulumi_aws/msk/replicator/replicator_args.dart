// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../replicator_kafka_cluster/replicator_kafka_cluster.dart';
import '../replicator_replication_info_list/replicator_replication_info_list.dart';

/// The set of arguments for Replicator.
class ReplicatorArgs {
  /// A summary description of the replicator.
  final Input<String>? description;

  /// A list of Kafka clusters which are targets of the replicator.
  final Input<List<ReplicatorKafkaCluster>> kafkaClusters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A list of replication configurations, where each configuration targets a given source cluster to target cluster replication flow.
  final Input<ReplicatorReplicationInfoList> replicationInfoList;

  /// The name of the replicator.
  final Input<String> replicatorName;

  /// The ARN of the IAM role used by the replicator to access resources in the customer's account (e.g source and target clusters).
  final Input<String> serviceExecutionRoleArn;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  ReplicatorArgs({
    this.description,
    required this.kafkaClusters,
    this.region,
    required this.replicationInfoList,
    required this.replicatorName,
    required this.serviceExecutionRoleArn,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['kafkaClusters'] = Input.mapInputValue<List<ReplicatorKafkaCluster>,
            List<Map<String, dynamic>>>(
        kafkaClusters,
        (value) =>
            Input.encodeList<ReplicatorKafkaCluster, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['replicationInfoList'] = Input.mapInputValue<
        ReplicatorReplicationInfoList,
        Map<String, dynamic>>(replicationInfoList, (value) => value.toMap());
    map['replicatorName'] = replicatorName;
    map['serviceExecutionRoleArn'] = serviceExecutionRoleArn;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ReplicatorArgs.fromMap(Map<String, dynamic> map) {
    return ReplicatorArgs(
      description: Input.asOptionalInput<String>(map['description']),
      kafkaClusters:
          Input.asInput<List<ReplicatorKafkaCluster>>(map['kafkaClusters']),
      region: Input.asOptionalInput<String>(map['region']),
      replicationInfoList: Input.asInput<ReplicatorReplicationInfoList>(
          map['replicationInfoList']),
      replicatorName: Input.asInput<String>(map['replicatorName']),
      serviceExecutionRoleArn:
          Input.asInput<String>(map['serviceExecutionRoleArn']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
