// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The partner connector type is KafkaAzureBlobStorageSource
class KafkaAzureBlobStorageSourceConnectorInfoResponse {
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
  /// Expected value is 'KafkaAzureBlobStorageSource'.
  final pulumi.Input<String> partnerConnectorType;
  /// Kafka Service Account Id
  final pulumi.Input<String>? serviceAccountId;
  /// Kafka topics Regex pattern
  final pulumi.Input<String>? topicRegex;
  /// Kafka topics directory
  final pulumi.Input<String>? topicsDir;

  /// Creates a new [KafkaAzureBlobStorageSourceConnectorInfoResponse].
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
  KafkaAzureBlobStorageSourceConnectorInfoResponse({
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

  factory KafkaAzureBlobStorageSourceConnectorInfoResponse.fromMap(Map<String, dynamic> map) {
    return KafkaAzureBlobStorageSourceConnectorInfoResponse(
      apiKey: map['apiKey'] == null ? null : (map['apiKey']! as String).input(),
      apiSecret: map['apiSecret'] == null ? null : (map['apiSecret']! as String).input(),
      authType: map['authType'] == null ? null : (map['authType']! as String).input(),
      inputFormat: map['inputFormat'] == null ? null : (map['inputFormat']! as String).input(),
      maxTasks: map['maxTasks'] == null ? null : (map['maxTasks']! as String).input(),
      outputFormat: map['outputFormat'] == null ? null : (map['outputFormat']! as String).input(),
      partnerConnectorType: (map['partnerConnectorType'] as String).input(),
      serviceAccountId: map['serviceAccountId'] == null ? null : (map['serviceAccountId']! as String).input(),
      topicRegex: map['topicRegex'] == null ? null : (map['topicRegex']! as String).input(),
      topicsDir: map['topicsDir'] == null ? null : (map['topicsDir']! as String).input(),
    );
  }
}

