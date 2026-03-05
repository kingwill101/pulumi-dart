// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_kafka_configs_kafka_config.dart';

class ApplicationKafkaConfigs {
  /// One or more logging configurations of ApsaraMQ for Kafka. See `kafka_configs` below.
  final pulumi.Input<List<ApplicationKafkaConfigsKafkaConfig>>? kafkaConfigs;
  /// The endpoint of the ApsaraMQ for Kafka API.
  final pulumi.Input<String>? kafkaEndpoint;
  /// The  ID of the ApsaraMQ for Kafka instance.
  final pulumi.Input<String>? kafkaInstanceId;

  /// Creates a new [ApplicationKafkaConfigs].
  /// [kafkaConfigs] One or more logging configurations of ApsaraMQ for Kafka. See `kafka_configs` below.
  /// [kafkaEndpoint] The endpoint of the ApsaraMQ for Kafka API.
  /// [kafkaInstanceId] The  ID of the ApsaraMQ for Kafka instance.
  ApplicationKafkaConfigs({
    this.kafkaConfigs,
    this.kafkaEndpoint,
    this.kafkaInstanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kafkaConfigs': ?pulumi.Input.mapOptionalInputValue<List<ApplicationKafkaConfigsKafkaConfig>, List<Map<String, dynamic>>>(kafkaConfigs, (value) => pulumi.Input.encodeList<ApplicationKafkaConfigsKafkaConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kafkaEndpoint': ?kafkaEndpoint,
      'kafkaInstanceId': ?kafkaInstanceId,
    };
  }

  factory ApplicationKafkaConfigs.fromMap(Map<String, dynamic> map) {
    return ApplicationKafkaConfigs(
      kafkaConfigs: (() { final guardedValue = map['kafkaConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationKafkaConfigsKafkaConfig>(guardedValue, (value) => ApplicationKafkaConfigsKafkaConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      kafkaEndpoint: (() { final guardedValue = map['kafkaEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kafkaInstanceId: (() { final guardedValue = map['kafkaInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

