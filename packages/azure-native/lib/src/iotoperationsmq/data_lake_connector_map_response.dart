// ignore_for_file: unused_element, unnecessary_cast

import 'delta_table_response.dart';

/// DataLake connector map route properties
class DataLakeConnectorMapResponse {
  /// Allowed latency for transferring data.
  final int allowedLatencySecs;
  /// Client Id to use.
  final String clientId;
  /// Maximum messages to send per Batch.
  final double maxMessagesPerBatch;
  /// Message payload type.
  final String messagePayloadType;
  /// Mqtt source topic.
  final String mqttSourceTopic;
  /// Quality of Service.
  final int? qos;
  /// Delta table properties to use.
  final DeltaTableResponse table;

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
      'table': table.toMap(),
    };
  }

  factory DataLakeConnectorMapResponse.fromMap(Map<String, dynamic> map) {
    return DataLakeConnectorMapResponse(
      allowedLatencySecs: map['allowedLatencySecs'] as int,
      clientId: map['clientId'] as String,
      maxMessagesPerBatch: map['maxMessagesPerBatch'] as double,
      messagePayloadType: map['messagePayloadType'] as String,
      mqttSourceTopic: map['mqttSourceTopic'] as String,
      qos: map['qos'] == null ? null : map['qos'] as int,
      table: DeltaTableResponse.fromMap((map['table'] as Map).cast<String, dynamic>()),
    );
  }
}

