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
    this.description,
    required this.kafkaClusters,
    this.region,
    required this.replicationInfoList,
    required this.replicatorName,
    required this.serviceExecutionRoleArn,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'kafkaClusters':
          pulumi.Input.mapInputValue<
            List<ReplicatorKafkaCluster>,
            List<Map<String, dynamic>>
          >(
            kafkaClusters,
            (value) =>
                pulumi.Input.encodeList<
                  ReplicatorKafkaCluster,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'region': ?region,
      'replicationInfoList':
          pulumi.Input.mapInputValue<
            ReplicatorReplicationInfoList,
            Map<String, dynamic>
          >(replicationInfoList, (value) => value.toMap()),
      'replicatorName': replicatorName,
      'serviceExecutionRoleArn': serviceExecutionRoleArn,
      'tags': ?tags,
    };
  }

  factory ReplicatorArgs.fromMap(Map<String, dynamic> map) {
    return ReplicatorArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kafkaClusters: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ReplicatorKafkaCluster>(
          map['kafkaClusters']!,
          (value) => ReplicatorKafkaCluster.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      replicationInfoList: pulumi.Input.fromValue(
        ReplicatorReplicationInfoList.fromMap(
          (map['replicationInfoList']! as Map).cast<String, dynamic>(),
        ),
      ),
      replicatorName: pulumi.Input.fromValue(map['replicatorName'] as String),
      serviceExecutionRoleArn: pulumi.Input.fromValue(
        map['serviceExecutionRoleArn'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
