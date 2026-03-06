// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationKafkaConfigsKafkaConfig {
  /// The topic of the Kafka.
  final pulumi.Input<String>? kafkaTopic;
  /// The path in which logs are stored.
  final pulumi.Input<String>? logDir;
  /// The type of the log.
  final pulumi.Input<String>? logType;

  /// Creates a new [ApplicationKafkaConfigsKafkaConfig].
  /// [kafkaTopic] The topic of the Kafka.
  /// [logDir] The path in which logs are stored.
  /// [logType] The type of the log.
  const ApplicationKafkaConfigsKafkaConfig({
    this.kafkaTopic,
    this.logDir,
    this.logType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kafkaTopic': ?kafkaTopic,
      'logDir': ?logDir,
      'logType': ?logType,
    };
  }

  factory ApplicationKafkaConfigsKafkaConfig.fromMap(Map<String, dynamic> map) {
    return ApplicationKafkaConfigsKafkaConfig(
      kafkaTopic: (() { final guardedValue = map['kafkaTopic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logDir: (() { final guardedValue = map['logDir']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logType: (() { final guardedValue = map['logType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

