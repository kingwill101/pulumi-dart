// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replicator_kafka_cluster.dart';
import 'replicator_replication_info_list.dart';

/// Input properties used for looking up and filtering Replicator resources.
class ReplicatorState {
  /// ARN of the Replicator.
  final pulumi.Input<String>? arn;
  final pulumi.Input<String>? currentVersion;
  /// A summary description of the replicator.
  final pulumi.Input<String>? description;
  /// A list of Kafka clusters which are targets of the replicator.
  final pulumi.Input<List<ReplicatorKafkaCluster>>? kafkaClusters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A list of replication configurations, where each configuration targets a given source cluster to target cluster replication flow.
  final pulumi.Input<ReplicatorReplicationInfoList>? replicationInfoList;
  /// The name of the replicator.
  final pulumi.Input<String>? replicatorName;
  /// The ARN of the IAM role used by the replicator to access resources in the customer's account (e.g source and target clusters).
  final pulumi.Input<String>? serviceExecutionRoleArn;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ReplicatorState].
  /// [arn] ARN of the Replicator.
  /// [currentVersion] Optional.
  /// [description] A summary description of the replicator.
  /// [kafkaClusters] A list of Kafka clusters which are targets of the replicator.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicationInfoList] A list of replication configurations, where each configuration targets a given source cluster to target cluster replication flow.
  /// [replicatorName] The name of the replicator.
  /// [serviceExecutionRoleArn] The ARN of the IAM role used by the replicator to access resources in the customer's account (e.g source and target clusters).
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ReplicatorState({
    this.arn,
    this.currentVersion,
    this.description,
    this.kafkaClusters,
    this.region,
    this.replicationInfoList,
    this.replicatorName,
    this.serviceExecutionRoleArn,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'currentVersion': ?currentVersion,
      'description': ?description,
      'kafkaClusters': ?pulumi.Input.mapOptionalInputValue<List<ReplicatorKafkaCluster>, List<Map<String, dynamic>>>(kafkaClusters, (value) => pulumi.Input.encodeList<ReplicatorKafkaCluster, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'replicationInfoList': ?pulumi.Input.mapOptionalInputValue<ReplicatorReplicationInfoList, Map<String, dynamic>>(replicationInfoList, (value) => value.toMap()),
      'replicatorName': ?replicatorName,
      'serviceExecutionRoleArn': ?serviceExecutionRoleArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ReplicatorState.fromMap(Map<String, dynamic> map) {
    return ReplicatorState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      currentVersion: map['currentVersion'] == null ? null : ((map['currentVersion'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      kafkaClusters: map['kafkaClusters'] == null ? null : ((pulumi.Input.decodeList<ReplicatorKafkaCluster>(map['kafkaClusters']!, (value) => ReplicatorKafkaCluster.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      replicationInfoList: map['replicationInfoList'] == null ? null : ((ReplicatorReplicationInfoList.fromMap((map['replicationInfoList']! as Map).cast<String, dynamic>())).input()).input(),
      replicatorName: map['replicatorName'] == null ? null : ((map['replicatorName'] as String).input()).input(),
      serviceExecutionRoleArn: map['serviceExecutionRoleArn'] == null ? null : ((map['serviceExecutionRoleArn'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

