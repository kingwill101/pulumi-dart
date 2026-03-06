// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delta_table.dart';

/// DataLake connector map route properties
class DataLakeConnectorMap {
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
  final pulumi.Input<DeltaTable> table;

  /// Creates a new [DataLakeConnectorMap].
  /// [allowedLatencySecs] Allowed latency for transferring data.
  /// [clientId] Client Id to use.
  /// [maxMessagesPerBatch] Maximum messages to send per Batch.
  /// [messagePayloadType] Message payload type.
  /// [mqttSourceTopic] Mqtt source topic.
  /// [qos] Quality of Service.
  /// [table] Delta table properties to use.
  const DataLakeConnectorMap({
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
      'table': pulumi.Input.mapInputValue<DeltaTable, Map<String, dynamic>>(table, (value) => value.toMap()),
    };
  }

  factory DataLakeConnectorMap.fromMap(Map<String, dynamic> map) {
    return DataLakeConnectorMap(
      allowedLatencySecs: pulumi.Input.fromValue(map['allowedLatencySecs'] as int),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      maxMessagesPerBatch: pulumi.Input.fromValue(map['maxMessagesPerBatch'] as double),
      messagePayloadType: pulumi.Input.fromValue(map['messagePayloadType'] as String),
      mqttSourceTopic: pulumi.Input.fromValue(map['mqttSourceTopic'] as String),
      qos: (() { final guardedValue = map['qos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      table: pulumi.Input.fromValue(DeltaTable.fromMap((map['table']! as Map).cast<String, dynamic>())),
    );
  }
}

