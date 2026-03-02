// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The partner connector type is KafkaAzureCosmosDBSink
class KafkaAzureCosmosDBSinkConnectorInfo {
  /// Kafka API Key
  final pulumi.Input<String>? apiKey;
  /// Kafka API Key Secret
  final pulumi.Input<String>? apiSecret;
  /// Kafka Auth Type
  final pulumi.Input<String>? authType;
  /// Flush size
  final pulumi.Input<String>? flushSize;
  /// Kafka Input Data Format Type
  final pulumi.Input<String>? inputFormat;
  /// Maximum Tasks
  final pulumi.Input<String>? maxTasks;
  /// Kafka Output Data Format Type
  final pulumi.Input<String>? outputFormat;
  /// Partner Connector type.
  /// Expected value is 'KafkaAzureCosmosDBSink'.
  final pulumi.Input<String> partnerConnectorType;
  /// Kafka Service Account Id
  final pulumi.Input<String>? serviceAccountId;
  /// Time Interval
  final pulumi.Input<String>? timeInterval;
  /// Kafka topics list
  final pulumi.Input<List<String>>? topics;
  /// Kafka topics directory
  final pulumi.Input<String>? topicsDir;

  /// Creates a new [KafkaAzureCosmosDBSinkConnectorInfo].
  /// [apiKey] Kafka API Key
  /// [apiSecret] Kafka API Key Secret
  /// [authType] Kafka Auth Type
  /// [flushSize] Flush size
  /// [inputFormat] Kafka Input Data Format Type
  /// [maxTasks] Maximum Tasks
  /// [outputFormat] Kafka Output Data Format Type
  /// [partnerConnectorType] Partner Connector type.
  /// [serviceAccountId] Kafka Service Account Id
  /// [timeInterval] Time Interval
  /// [topics] Kafka topics list
  /// [topicsDir] Kafka topics directory
  KafkaAzureCosmosDBSinkConnectorInfo({
    this.apiKey,
    this.apiSecret,
    this.authType,
    this.flushSize,
    this.inputFormat,
    this.maxTasks,
    this.outputFormat,
    required this.partnerConnectorType,
    this.serviceAccountId,
    this.timeInterval,
    this.topics,
    this.topicsDir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'apiSecret': ?apiSecret,
      'authType': ?authType,
      'flushSize': ?flushSize,
      'inputFormat': ?inputFormat,
      'maxTasks': ?maxTasks,
      'outputFormat': ?outputFormat,
      'partnerConnectorType': partnerConnectorType,
      'serviceAccountId': ?serviceAccountId,
      'timeInterval': ?timeInterval,
      'topics': ?topics,
      'topicsDir': ?topicsDir,
    };
  }

  factory KafkaAzureCosmosDBSinkConnectorInfo.fromMap(Map<String, dynamic> map) {
    return KafkaAzureCosmosDBSinkConnectorInfo(
      apiKey: map['apiKey'] == null ? null : (map['apiKey']! as String).input(),
      apiSecret: map['apiSecret'] == null ? null : (map['apiSecret']! as String).input(),
      authType: map['authType'] == null ? null : (map['authType']! as String).input(),
      flushSize: map['flushSize'] == null ? null : (map['flushSize']! as String).input(),
      inputFormat: map['inputFormat'] == null ? null : (map['inputFormat']! as String).input(),
      maxTasks: map['maxTasks'] == null ? null : (map['maxTasks']! as String).input(),
      outputFormat: map['outputFormat'] == null ? null : (map['outputFormat']! as String).input(),
      partnerConnectorType: (map['partnerConnectorType'] as String).input(),
      serviceAccountId: map['serviceAccountId'] == null ? null : (map['serviceAccountId']! as String).input(),
      timeInterval: map['timeInterval'] == null ? null : (map['timeInterval']! as String).input(),
      topics: map['topics'] == null ? null : ((map['topics']! as List).cast<String>()).input(),
      topicsDir: map['topicsDir'] == null ? null : (map['topicsDir']! as String).input(),
    );
  }
}

