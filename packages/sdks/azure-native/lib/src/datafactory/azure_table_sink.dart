// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A copy activity Azure Table sink.
class AzureTableSink {
  /// Azure Table default partition key value. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? azureTableDefaultPartitionKeyValue;

  /// Azure Table insert type. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? azureTableInsertType;

  /// Azure Table partition key name. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? azureTablePartitionKeyName;

  /// Azure Table row key name. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? azureTableRowKeyName;

  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? disableMetricsCollection;

  /// The maximum concurrent connection count for the sink data store. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxConcurrentConnections;

  /// Sink retry count. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? sinkRetryCount;

  /// Sink retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? sinkRetryWait;

  /// Copy sink type.
  /// Expected value is 'AzureTableSink'.
  final pulumi.Input<String> type;

  /// Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  final pulumi.Input<dynamic>? writeBatchSize;

  /// Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? writeBatchTimeout;

  /// Creates a new [AzureTableSink].
  /// [azureTableDefaultPartitionKeyValue] Azure Table default partition key value. Type: string (or Expression with resultType string).
  /// [azureTableInsertType] Azure Table insert type. Type: string (or Expression with resultType string).
  /// [azureTablePartitionKeyName] Azure Table partition key name. Type: string (or Expression with resultType string).
  /// [azureTableRowKeyName] Azure Table row key name. Type: string (or Expression with resultType string).
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the sink data store. Type: integer (or Expression with resultType integer).
  /// [sinkRetryCount] Sink retry count. Type: integer (or Expression with resultType integer).
  /// [sinkRetryWait] Sink retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [type] Copy sink type.
  /// [writeBatchSize] Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  /// [writeBatchTimeout] Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  AzureTableSink({
    this.azureTableDefaultPartitionKeyValue,
    this.azureTableInsertType,
    this.azureTablePartitionKeyName,
    this.azureTableRowKeyName,
    this.disableMetricsCollection,
    this.maxConcurrentConnections,
    this.sinkRetryCount,
    this.sinkRetryWait,
    required this.type,
    this.writeBatchSize,
    this.writeBatchTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureTableDefaultPartitionKeyValue': ?azureTableDefaultPartitionKeyValue,
      'azureTableInsertType': ?azureTableInsertType,
      'azureTablePartitionKeyName': ?azureTablePartitionKeyName,
      'azureTableRowKeyName': ?azureTableRowKeyName,
      'disableMetricsCollection': ?disableMetricsCollection,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'sinkRetryCount': ?sinkRetryCount,
      'sinkRetryWait': ?sinkRetryWait,
      'type': type,
      'writeBatchSize': ?writeBatchSize,
      'writeBatchTimeout': ?writeBatchTimeout,
    };
  }

  factory AzureTableSink.fromMap(Map<String, dynamic> map) {
    return AzureTableSink(
      azureTableDefaultPartitionKeyValue: (() {
        final guardedValue = map['azureTableDefaultPartitionKeyValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      azureTableInsertType: (() {
        final guardedValue = map['azureTableInsertType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      azureTablePartitionKeyName: (() {
        final guardedValue = map['azureTablePartitionKeyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      azureTableRowKeyName: (() {
        final guardedValue = map['azureTableRowKeyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      disableMetricsCollection: (() {
        final guardedValue = map['disableMetricsCollection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      maxConcurrentConnections: (() {
        final guardedValue = map['maxConcurrentConnections'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      sinkRetryCount: (() {
        final guardedValue = map['sinkRetryCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      sinkRetryWait: (() {
        final guardedValue = map['sinkRetryWait'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      writeBatchSize: (() {
        final guardedValue = map['writeBatchSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      writeBatchTimeout: (() {
        final guardedValue = map['writeBatchTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
    );
  }
}
