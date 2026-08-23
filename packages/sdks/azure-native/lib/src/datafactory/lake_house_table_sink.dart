// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A copy activity for Microsoft Fabric Lakehouse Table sink.
class LakeHouseTableSink {
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? disableMetricsCollection;
  /// The maximum concurrent connection count for the sink data store. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxConcurrentConnections;
  /// Specify the partition column names from sink columns. Type: array of objects (or Expression with resultType array of objects).
  final pulumi.Input<dynamic>? partitionNameList;
  /// Create partitions in folder structure based on one or multiple columns. Each distinct column value (pair) will be a new partition. Possible values include: "None", "PartitionByKey".
  final pulumi.Input<dynamic>? partitionOption;
  /// Sink retry count. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? sinkRetryCount;
  /// Sink retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? sinkRetryWait;
  /// The type of table action for Lakehouse Table sink. Possible values include: "None", "Append", "Overwrite".
  final pulumi.Input<dynamic>? tableActionOption;
  /// Copy sink type.
  /// Expected value is 'LakeHouseTableSink'.
  final pulumi.Input<String> type;
  /// Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  final pulumi.Input<dynamic>? writeBatchSize;
  /// Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? writeBatchTimeout;

  /// Creates a new [LakeHouseTableSink].
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the sink data store. Type: integer (or Expression with resultType integer).
  /// [partitionNameList] Specify the partition column names from sink columns. Type: array of objects (or Expression with resultType array of objects).
  /// [partitionOption] Create partitions in folder structure based on one or multiple columns. Each distinct column value (pair) will be a new partition. Possible values include: "None", "PartitionByKey".
  /// [sinkRetryCount] Sink retry count. Type: integer (or Expression with resultType integer).
  /// [sinkRetryWait] Sink retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [tableActionOption] The type of table action for Lakehouse Table sink. Possible values include: "None", "Append", "Overwrite".
  /// [type] Copy sink type.
  /// [writeBatchSize] Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  /// [writeBatchTimeout] Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  const LakeHouseTableSink({
    this.disableMetricsCollection,
    this.maxConcurrentConnections,
    this.partitionNameList,
    this.partitionOption,
    this.sinkRetryCount,
    this.sinkRetryWait,
    this.tableActionOption,
    required this.type,
    this.writeBatchSize,
    this.writeBatchTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableMetricsCollection': ?disableMetricsCollection,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'partitionNameList': ?partitionNameList,
      'partitionOption': ?partitionOption,
      'sinkRetryCount': ?sinkRetryCount,
      'sinkRetryWait': ?sinkRetryWait,
      'tableActionOption': ?tableActionOption,
      'type': type,
      'writeBatchSize': ?writeBatchSize,
      'writeBatchTimeout': ?writeBatchTimeout,
    };
  }

  factory LakeHouseTableSink.fromMap(Map<String, dynamic> map) {
    return LakeHouseTableSink(
      disableMetricsCollection: (() { final guardedValue = map['disableMetricsCollection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      maxConcurrentConnections: (() { final guardedValue = map['maxConcurrentConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      partitionNameList: (() { final guardedValue = map['partitionNameList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      partitionOption: (() { final guardedValue = map['partitionOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      sinkRetryCount: (() { final guardedValue = map['sinkRetryCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      sinkRetryWait: (() { final guardedValue = map['sinkRetryWait']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      tableActionOption: (() { final guardedValue = map['tableActionOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      writeBatchSize: (() { final guardedValue = map['writeBatchSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      writeBatchTimeout: (() { final guardedValue = map['writeBatchTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
