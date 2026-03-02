// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delta_table_response.dart';

/// DataLake connector map route properties
class DataLakeConnectorMapResponse {
  /// Allowed latency for transferring data.
  final pulumi.Input<int> allowedLatencySecs;
  /// Client Id to use.
  final pulumi.Input<String> clientId;
  /// Maximum messages to send per Batch.
  final pulumi.Input<double> maxMessagesPerBatch;
  /// Message payload type.
  final pulumi.Input<String> messagePayloadType;
  /// Mqtt source topic.
  final pulumi.Input<String> mqttSourceTopic;
  /// Quality of Service.
  final pulumi.Input<int>? qos;
  /// Delta table properties to use.
  final pulumi.Input<DeltaTableResponse> table;

  /// Creates a new [DataLakeConnectorMapResponse].
  /// [allowedLatencySecs] Allowed latency for transferring data.
  /// [clientId] Client Id to use.
  /// [maxMessagesPerBatch] Maximum messages to send per Batch.
  /// [messagePayloadType] Message payload type.
  /// [mqttSourceTopic] Mqtt source topic.
  /// [qos] Quality of Service.
  /// [table] Delta table properties to use.
  DataLakeConnectorMapResponse({
    required this.allowedLatencySecs,
    required this.clientId,
    required this.maxMessagesPerBatch,
    required this.messagePayloadType,
    required this.mqttSourceTopic,
    this.qos,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedLatencySecs': allowedLatencySecs,
      'clientId': clientId,
      'maxMessagesPerBatch': maxMessagesPerBatch,
      'messagePayloadType': messagePayloadType,
      'mqttSourceTopic': mqttSourceTopic,
      'qos': ?qos,
      'table': pulumi.Input.mapInputValue<DeltaTableResponse, Map<String, dynamic>>(table, (value) => value.toMap()),
    };
  }

  factory DataLakeConnectorMapResponse.fromMap(Map<String, dynamic> map) {
    return DataLakeConnectorMapResponse(
      allowedLatencySecs: (map['allowedLatencySecs'] as int).input(),
      clientId: (map['clientId'] as String).input(),
      maxMessagesPerBatch: (map['maxMessagesPerBatch'] as double).input(),
      messagePayloadType: (map['messagePayloadType'] as String).input(),
      mqttSourceTopic: (map['mqttSourceTopic'] as String).input(),
      qos: map['qos'] == null ? null : (map['qos']! as int).input(),
      table: (DeltaTableResponse.fromMap((map['table'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

