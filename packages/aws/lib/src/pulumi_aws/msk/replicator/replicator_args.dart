// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../replicator_kafka_cluster/replicator_kafka_cluster.dart';
import '../replicator_replication_info_list/replicator_replication_info_list.dart';

/// The set of arguments for Replicator.
class ReplicatorArgs {
  /// A summary description of the replicator.
  final pulumi.Input<String>? description;

  /// A list of Kafka clusters which are targets of the replicator.
  final pulumi.Input<List<ReplicatorKafkaCluster>> kafkaClusters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A list of replication configurations, where each configuration targets a given source cluster to target cluster replication flow.
  final pulumi.Input<ReplicatorReplicationInfoList> replicationInfoList;

  /// The name of the replicator.
  final pulumi.Input<String> replicatorName;

  /// The ARN of the IAM role used by the replicator to access resources in the customer's account (e.g source and target clusters).
  final pulumi.Input<String> serviceExecutionRoleArn;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

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
    map['kafkaClusters'] = pulumi.Input.mapInputValue<
            List<ReplicatorKafkaCluster>, List<Map<String, dynamic>>>(
        kafkaClusters,
        (value) => pulumi.Input.encodeList<ReplicatorKafkaCluster,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['replicationInfoList'] = pulumi.Input.mapInputValue<
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
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      kafkaClusters: pulumi.Input.asInput<List<ReplicatorKafkaCluster>>(
          map['kafkaClusters']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      replicationInfoList: pulumi.Input.asInput<ReplicatorReplicationInfoList>(
          map['replicationInfoList']),
      replicatorName: pulumi.Input.asInput<String>(map['replicatorName']),
      serviceExecutionRoleArn:
          pulumi.Input.asInput<String>(map['serviceExecutionRoleArn']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
