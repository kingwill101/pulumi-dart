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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? currentVersion,
    pulumi.Output<String>? description,
    pulumi.Output<List<ReplicatorKafkaCluster>>? kafkaClusters,
    pulumi.Output<String>? region,
    pulumi.Output<ReplicatorReplicationInfoList>? replicationInfoList,
    pulumi.Output<String>? replicatorName,
    pulumi.Output<String>? serviceExecutionRoleArn,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      currentVersion = pulumi.Input.asOptionalInput<String>(currentVersion),
      description = pulumi.Input.asOptionalInput<String>(description),
      kafkaClusters = pulumi.Input.asOptionalInput<List<ReplicatorKafkaCluster>>(kafkaClusters),
      region = pulumi.Input.asOptionalInput<String>(region),
      replicationInfoList = pulumi.Input.asOptionalInput<ReplicatorReplicationInfoList>(replicationInfoList),
      replicatorName = pulumi.Input.asOptionalInput<String>(replicatorName),
      serviceExecutionRoleArn = pulumi.Input.asOptionalInput<String>(serviceExecutionRoleArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      currentVersion: map['currentVersion'] == null ? null : pulumi.Output.create<String>(map['currentVersion'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      kafkaClusters: map['kafkaClusters'] == null ? null : pulumi.Output.create<List<ReplicatorKafkaCluster>>(pulumi.Input.decodeList<ReplicatorKafkaCluster>(map['kafkaClusters'], (value) => ReplicatorKafkaCluster.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      replicationInfoList: map['replicationInfoList'] == null ? null : pulumi.Output.create<ReplicatorReplicationInfoList>(ReplicatorReplicationInfoList.fromMap((map['replicationInfoList'] as Map).cast<String, dynamic>())),
      replicatorName: map['replicatorName'] == null ? null : pulumi.Output.create<String>(map['replicatorName'] as String),
      serviceExecutionRoleArn: map['serviceExecutionRoleArn'] == null ? null : pulumi.Output.create<String>(map['serviceExecutionRoleArn'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

