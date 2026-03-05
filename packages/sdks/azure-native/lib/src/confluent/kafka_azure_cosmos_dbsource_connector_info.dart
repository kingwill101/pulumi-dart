// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The partner connector type is KafkaAzureCosmosDBSource
class KafkaAzureCosmosDBSourceConnectorInfo {
  /// Kafka API Key
  final pulumi.Input<String>? apiKey;
  /// Kafka API Secret
  final pulumi.Input<String>? apiSecret;
  /// Kafka Auth Type
  final pulumi.Input<String>? authType;
  /// Kafka Input Data Format Type
  final pulumi.Input<String>? inputFormat;
  /// Maximum Tasks
  final pulumi.Input<String>? maxTasks;
  /// Kafka Output Data Format Type
  final pulumi.Input<String>? outputFormat;
  /// Partner Connector type.
  /// Expected value is 'KafkaAzureCosmosDBSource'.
  final pulumi.Input<String> partnerConnectorType;
  /// Kafka Service Account Id
  final pulumi.Input<String>? serviceAccountId;
  /// Kafka topics Regex pattern
  final pulumi.Input<String>? topicRegex;
  /// Kafka topics directory
  final pulumi.Input<String>? topicsDir;

  /// Creates a new [KafkaAzureCosmosDBSourceConnectorInfo].
  /// [apiKey] Kafka API Key
  /// [apiSecret] Kafka API Secret
  /// [authType] Kafka Auth Type
  /// [inputFormat] Kafka Input Data Format Type
  /// [maxTasks] Maximum Tasks
  /// [outputFormat] Kafka Output Data Format Type
  /// [partnerConnectorType] Partner Connector type.
  /// [serviceAccountId] Kafka Service Account Id
  /// [topicRegex] Kafka topics Regex pattern
  /// [topicsDir] Kafka topics directory
  KafkaAzureCosmosDBSourceConnectorInfo({
    this.apiKey,
    this.apiSecret,
    this.authType,
    this.inputFormat,
    this.maxTasks,
    this.outputFormat,
    required this.partnerConnectorType,
    this.serviceAccountId,
    this.topicRegex,
    this.topicsDir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'apiSecret': ?apiSecret,
      'authType': ?authType,
      'inputFormat': ?inputFormat,
      'maxTasks': ?maxTasks,
      'outputFormat': ?outputFormat,
      'partnerConnectorType': partnerConnectorType,
      'serviceAccountId': ?serviceAccountId,
      'topicRegex': ?topicRegex,
      'topicsDir': ?topicsDir,
    };
  }

  factory KafkaAzureCosmosDBSourceConnectorInfo.fromMap(Map<String, dynamic> map) {
    return KafkaAzureCosmosDBSourceConnectorInfo(
      apiKey: (() { final guardedValue = map['apiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiSecret: (() { final guardedValue = map['apiSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authType: (() { final guardedValue = map['authType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputFormat: (() { final guardedValue = map['inputFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxTasks: (() { final guardedValue = map['maxTasks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFormat: (() { final guardedValue = map['outputFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partnerConnectorType: pulumi.Input.fromValue(map['partnerConnectorType'] as String),
      serviceAccountId: (() { final guardedValue = map['serviceAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topicRegex: (() { final guardedValue = map['topicRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topicsDir: (() { final guardedValue = map['topicsDir']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

