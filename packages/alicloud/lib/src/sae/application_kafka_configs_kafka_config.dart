// ignore_for_file: unused_element, unnecessary_cast


class ApplicationKafkaConfigsKafkaConfig {
  /// The topic of the Kafka.
  final String? kafkaTopic;
  /// The path in which logs are stored.
  final String? logDir;
  /// The type of the log.
  final String? logType;

  /// Creates a new [ApplicationKafkaConfigsKafkaConfig].
  /// [kafkaTopic] The topic of the Kafka.
  /// [logDir] The path in which logs are stored.
  /// [logType] The type of the log.
  ApplicationKafkaConfigsKafkaConfig({
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
      kafkaTopic: map['kafkaTopic'] == null ? null : map['kafkaTopic'] as String,
      logDir: map['logDir'] == null ? null : map['logDir'] as String,
      logType: map['logType'] == null ? null : map['logType'] as String,
    );
  }
}

