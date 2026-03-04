// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The partner connector type is KafkaAzureCosmosDBSink
class KafkaAzureCosmosDBSinkConnectorInfoResponse {
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

  /// Creates a new [KafkaAzureCosmosDBSinkConnectorInfoResponse].
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
  KafkaAzureCosmosDBSinkConnectorInfoResponse({
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

  factory KafkaAzureCosmosDBSinkConnectorInfoResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return KafkaAzureCosmosDBSinkConnectorInfoResponse(
      apiKey: (() {
        final guardedValue = map['apiKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      apiSecret: (() {
        final guardedValue = map['apiSecret'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      authType: (() {
        final guardedValue = map['authType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      flushSize: (() {
        final guardedValue = map['flushSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      inputFormat: (() {
        final guardedValue = map['inputFormat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maxTasks: (() {
        final guardedValue = map['maxTasks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFormat: (() {
        final guardedValue = map['outputFormat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      partnerConnectorType: pulumi.Input.fromValue(
        map['partnerConnectorType'] as String,
      ),
      serviceAccountId: (() {
        final guardedValue = map['serviceAccountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeInterval: (() {
        final guardedValue = map['timeInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      topics: (() {
        final guardedValue = map['topics'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      topicsDir: (() {
        final guardedValue = map['topicsDir'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
