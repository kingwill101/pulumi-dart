// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterLogDeliveryConfiguration {
  /// Name of either the CloudWatch Logs LogGroup or Kinesis Data Firehose resource.
  final pulumi.Input<String> destination;
  /// For CloudWatch Logs use `cloudwatch-logs` or for Kinesis Data Firehose use `kinesis-firehose`.
  final pulumi.Input<String> destinationType;
  /// Valid values are `json` or `text`
  final pulumi.Input<String> logFormat;
  /// Valid values are  `slow-log` or `engine-log`. Max 1 of each.
  final pulumi.Input<String> logType;

  /// Creates a new [ClusterLogDeliveryConfiguration].
  /// [destination] Name of either the CloudWatch Logs LogGroup or Kinesis Data Firehose resource.
  /// [destinationType] For CloudWatch Logs use `cloudwatch-logs` or for Kinesis Data Firehose use `kinesis-firehose`.
  /// [logFormat] Valid values are `json` or `text`
  /// [logType] Valid values are  `slow-log` or `engine-log`. Max 1 of each.
  ClusterLogDeliveryConfiguration({
    required this.destination,
    required this.destinationType,
    required this.logFormat,
    required this.logType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': destination,
      'destinationType': destinationType,
      'logFormat': logFormat,
      'logType': logType,
    };
  }

  factory ClusterLogDeliveryConfiguration.fromMap(Map<String, dynamic> map) {
    return ClusterLogDeliveryConfiguration(
      destination: pulumi.Input.fromValue(map['destination'] as String),
      destinationType: pulumi.Input.fromValue(map['destinationType'] as String),
      logFormat: pulumi.Input.fromValue(map['logFormat'] as String),
      logType: pulumi.Input.fromValue(map['logType'] as String),
    );
  }
}

