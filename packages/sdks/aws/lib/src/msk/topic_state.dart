// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_timeouts.dart';

/// Input properties used for looking up and filtering Topic resources.
class TopicState {
  /// ARN of the Topic.
  final pulumi.Input<String>? arn;
  /// Amazon Resource Name (ARN) that uniquely identifies MSK Cluster.
  final pulumi.Input<String>? clusterArn;
  /// Explicit configured Kafka configuration in JSON format for Topic.
  final pulumi.Input<String>? configs;
  /// Aggregated Kafka configuration in JSON format for Topic, both explicit set values from `configs` and implicit set values (AWS default configuration, historically set values or manual configuration from outside Terraform).
  final pulumi.Input<String>? configsActual;
  /// Name of Topic.
  final pulumi.Input<String>? name;
  /// Number of partitions for Topic.
  final pulumi.Input<int>? partitionCount;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Replication factor for Topic.
  ///
  /// The following arguments are optional:
  final pulumi.Input<int>? replicationFactor;
  final pulumi.Input<TopicTimeouts>? timeouts;

  /// Creates a new [TopicState].
  /// [arn] ARN of the Topic.
  /// [clusterArn] Amazon Resource Name (ARN) that uniquely identifies MSK Cluster.
  /// [configs] Explicit configured Kafka configuration in JSON format for Topic.
  /// [configsActual] Aggregated Kafka configuration in JSON format for Topic, both explicit set values from `configs` and implicit set values (AWS default configuration, historically set values or manual configuration from outside Terraform).
  /// [name] Name of Topic.
  /// [partitionCount] Number of partitions for Topic.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicationFactor] Replication factor for Topic.
  /// [timeouts] Optional.
  const TopicState({
    this.arn,
    this.clusterArn,
    this.configs,
    this.configsActual,
    this.name,
    this.partitionCount,
    this.region,
    this.replicationFactor,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'clusterArn': ?clusterArn,
      'configs': ?configs,
      'configsActual': ?configsActual,
      'name': ?name,
      'partitionCount': ?partitionCount,
      'region': ?region,
      'replicationFactor': ?replicationFactor,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<TopicTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory TopicState.fromMap(Map<String, dynamic> map) {
    return TopicState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterArn: (() { final guardedValue = map['clusterArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configs: (() { final guardedValue = map['configs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configsActual: (() { final guardedValue = map['configsActual']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partitionCount: (() { final guardedValue = map['partitionCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicationFactor: (() { final guardedValue = map['replicationFactor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TopicTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
