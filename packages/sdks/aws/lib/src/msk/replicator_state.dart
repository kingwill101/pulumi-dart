// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replicator_kafka_cluster.dart';
import 'replicator_log_delivery.dart';
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
  /// Configuration block for delivering replicator logs to customer destinations. Detailed below.
  final pulumi.Input<ReplicatorLogDelivery>? logDelivery;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A list of replication configurations, where each configuration targets a given source cluster to target cluster replication flow.
  final pulumi.Input<ReplicatorReplicationInfoList>? replicationInfoList;
  /// The name of the replicator.
  final pulumi.Input<String>? replicatorName;
  /// The ARN of the IAM role used by the replicator to access resources in the customer's account (e.g source and target clusters).
  final pulumi.Input<String>? serviceExecutionRoleArn;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ReplicatorState].
  /// [arn] ARN of the Replicator.
  /// [currentVersion] Optional.
  /// [description] A summary description of the replicator.
  /// [kafkaClusters] A list of Kafka clusters which are targets of the replicator.
  /// [logDelivery] Configuration block for delivering replicator logs to customer destinations. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicationInfoList] A list of replication configurations, where each configuration targets a given source cluster to target cluster replication flow.
  /// [replicatorName] The name of the replicator.
  /// [serviceExecutionRoleArn] The ARN of the IAM role used by the replicator to access resources in the customer's account (e.g source and target clusters).
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const ReplicatorState({
    this.arn,
    this.currentVersion,
    this.description,
    this.kafkaClusters,
    this.logDelivery,
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
      'logDelivery': ?pulumi.Input.mapOptionalInputValue<ReplicatorLogDelivery, Map<String, dynamic>>(logDelivery, (value) => value.toMap()),
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      currentVersion: (() { final guardedValue = map['currentVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kafkaClusters: (() { final guardedValue = map['kafkaClusters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReplicatorKafkaCluster>(guardedValue, (value) => ReplicatorKafkaCluster.fromMap((value as Map).cast<String, dynamic>()))); })(),
      logDelivery: (() { final guardedValue = map['logDelivery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReplicatorLogDelivery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicationInfoList: (() { final guardedValue = map['replicationInfoList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReplicatorReplicationInfoList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      replicatorName: (() { final guardedValue = map['replicatorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceExecutionRoleArn: (() { final guardedValue = map['serviceExecutionRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
