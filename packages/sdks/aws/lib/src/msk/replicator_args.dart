// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replicator_kafka_cluster.dart';
import 'replicator_replication_info_list.dart';

/// {@template pulumi_msk_replicator_replicator_args_doc}
/// The set of arguments for Replicator.
/// {@endtemplate}
/// {@macro pulumi_msk_replicator_replicator_args_doc}
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

  /// Creates a new [ReplicatorArgs].
  /// [description] A summary description of the replicator.
  /// [kafkaClusters] A list of Kafka clusters which are targets of the replicator.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicationInfoList] A list of replication configurations, where each configuration targets a given source cluster to target cluster replication flow.
  /// [replicatorName] The name of the replicator.
  /// [serviceExecutionRoleArn] The ARN of the IAM role used by the replicator to access resources in the customer's account (e.g source and target clusters).
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ReplicatorArgs({
    pulumi.Output<String>? description,
    required pulumi.Output<List<ReplicatorKafkaCluster>> kafkaClusters,
    pulumi.Output<String>? region,
    required pulumi.Output<ReplicatorReplicationInfoList> replicationInfoList,
    required pulumi.Output<String> replicatorName,
    required pulumi.Output<String> serviceExecutionRoleArn,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      kafkaClusters = pulumi.Input.asInput<List<ReplicatorKafkaCluster>>(kafkaClusters),
      region = pulumi.Input.asOptionalInput<String>(region),
      replicationInfoList = pulumi.Input.asInput<ReplicatorReplicationInfoList>(replicationInfoList),
      replicatorName = pulumi.Input.asInput<String>(replicatorName),
      serviceExecutionRoleArn = pulumi.Input.asInput<String>(serviceExecutionRoleArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'kafkaClusters': pulumi.Input.mapInputValue<List<ReplicatorKafkaCluster>, List<Map<String, dynamic>>>(kafkaClusters, (value) => pulumi.Input.encodeList<ReplicatorKafkaCluster, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'replicationInfoList': pulumi.Input.mapInputValue<ReplicatorReplicationInfoList, Map<String, dynamic>>(replicationInfoList, (value) => value.toMap()),
      'replicatorName': replicatorName,
      'serviceExecutionRoleArn': serviceExecutionRoleArn,
      'tags': ?tags,
    };
  }

  factory ReplicatorArgs.fromMap(Map<String, dynamic> map) {
    return ReplicatorArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      kafkaClusters: pulumi.Output.create<List<ReplicatorKafkaCluster>>(pulumi.Input.decodeList<ReplicatorKafkaCluster>(map['kafkaClusters'], (value) => ReplicatorKafkaCluster.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      replicationInfoList: pulumi.Output.create<ReplicatorReplicationInfoList>(ReplicatorReplicationInfoList.fromMap((map['replicationInfoList'] as Map).cast<String, dynamic>())),
      replicatorName: pulumi.Output.create<String>(map['replicatorName'] as String),
      serviceExecutionRoleArn: pulumi.Output.create<String>(map['serviceExecutionRoleArn'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

