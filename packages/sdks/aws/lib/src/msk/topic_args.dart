// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_timeouts.dart';

/// {@template pulumi_msk_topic_topic_args_doc}
/// The set of arguments for Topic.
/// {@endtemplate}
/// {@macro pulumi_msk_topic_topic_args_doc}
class TopicArgs {
  /// ARN that uniquely identifies MSK Cluster.
  final pulumi.Input<String> clusterArn;
  /// Explicit configured Kafka configuration in JSON format for Topic.
  final pulumi.Input<String?>? configs;
  /// Name of Topic.
  final pulumi.Input<String?>? name;
  /// Number of partitions for Topic.
  final pulumi.Input<int> partitionCount;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Replication factor for Topic.
  ///
  /// The following arguments are optional:
  final pulumi.Input<int> replicationFactor;
  final pulumi.Input<TopicTimeouts?>? timeouts;

  /// Creates a new [TopicArgs].
  /// [clusterArn] ARN that uniquely identifies MSK Cluster.
  /// [configs] Explicit configured Kafka configuration in JSON format for Topic.
  /// [name] Name of Topic.
  /// [partitionCount] Number of partitions for Topic.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicationFactor] Replication factor for Topic.
  /// [timeouts] Optional.
  const TopicArgs({
    required this.clusterArn,
    this.configs,
    this.name,
    required this.partitionCount,
    this.region,
    required this.replicationFactor,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterArn': clusterArn,
      'configs': ?configs,
      'name': ?name,
      'partitionCount': partitionCount,
      'region': ?region,
      'replicationFactor': replicationFactor,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<TopicTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory TopicArgs.fromMap(Map<String, dynamic> map) {
    return TopicArgs(
      clusterArn: pulumi.Input.fromValue(map['clusterArn'] as String),
      configs: (() { final guardedValue = map['configs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partitionCount: pulumi.Input.fromValue((map['partitionCount'] as num).toInt()),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicationFactor: pulumi.Input.fromValue((map['replicationFactor'] as num).toInt()),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TopicTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
