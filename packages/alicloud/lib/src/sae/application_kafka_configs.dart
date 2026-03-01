// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_kafka_configs_kafka_config.dart';

class ApplicationKafkaConfigs {
  /// One or more logging configurations of ApsaraMQ for Kafka. See `kafka_configs` below.
  final List<ApplicationKafkaConfigsKafkaConfig>? kafkaConfigs;
  /// The endpoint of the ApsaraMQ for Kafka API.
  final String? kafkaEndpoint;
  /// The  ID of the ApsaraMQ for Kafka instance.
  final String? kafkaInstanceId;

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
      'kafkaConfigs': ?kafkaConfigs == null ? null : pulumi.Input.encodeList<ApplicationKafkaConfigsKafkaConfig, Map<String, dynamic>>(kafkaConfigs!, (value) => value.toMap()),
      'kafkaEndpoint': ?kafkaEndpoint,
      'kafkaInstanceId': ?kafkaInstanceId,
    };
  }

  factory ApplicationKafkaConfigs.fromMap(Map<String, dynamic> map) {
    return ApplicationKafkaConfigs(
      kafkaConfigs: map['kafkaConfigs'] == null ? null : pulumi.Input.decodeList<ApplicationKafkaConfigsKafkaConfig>(map['kafkaConfigs'], (value) => ApplicationKafkaConfigsKafkaConfig.fromMap((value as Map).cast<String, dynamic>())),
      kafkaEndpoint: map['kafkaEndpoint'] == null ? null : map['kafkaEndpoint'] as String,
      kafkaInstanceId: map['kafkaInstanceId'] == null ? null : map['kafkaInstanceId'] as String,
    );
  }
}

