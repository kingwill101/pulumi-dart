// ignore_for_file: unused_element, unnecessary_cast

import 'azure_postgre_sql_sink_upsert_settings.dart';

/// A copy activity Azure Database for PostgreSQL sink.
class AzurePostgreSqlSink {
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic disableMetricsCollection;
  /// The maximum concurrent connection count for the sink data store. Type: integer (or Expression with resultType integer).
  final dynamic maxConcurrentConnections;
  /// A query to execute before starting the copy. Type: string (or Expression with resultType string).
  final dynamic preCopyScript;
  /// Sink retry count. Type: integer (or Expression with resultType integer).
  final dynamic sinkRetryCount;
  /// Sink retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic sinkRetryWait;
  /// Copy sink type.
  /// Expected value is 'AzurePostgreSqlSink'.
  final String type;
  /// Azure Database for PostgreSQL upsert option settings
  final AzurePostgreSqlSinkUpsertSettings? upsertSettings;
  /// Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  final dynamic writeBatchSize;
  /// Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic writeBatchTimeout;
  /// The write behavior for the operation. Default is Bulk Insert.
  final String? writeMethod;

  /// Creates a new [AzurePostgreSqlSink].
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the sink data store. Type: integer (or Expression with resultType integer).
  /// [preCopyScript] A query to execute before starting the copy. Type: string (or Expression with resultType string).
  /// [sinkRetryCount] Sink retry count. Type: integer (or Expression with resultType integer).
  /// [sinkRetryWait] Sink retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [type] Copy sink type.
  /// [upsertSettings] Azure Database for PostgreSQL upsert option settings
  /// [writeBatchSize] Write batch size. Type: integer (or Expression with resultType integer), minimum: 0.
  /// [writeBatchTimeout] Write batch timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [writeMethod] The write behavior for the operation. Default is Bulk Insert.
  AzurePostgreSqlSink({
    this.disableMetricsCollection,
    this.maxConcurrentConnections,
    this.preCopyScript,
    this.sinkRetryCount,
    this.sinkRetryWait,
    required this.type,
    this.upsertSettings,
    this.writeBatchSize,
    this.writeBatchTimeout,
    this.writeMethod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableMetricsCollection': ?disableMetricsCollection,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'preCopyScript': ?preCopyScript,
      'sinkRetryCount': ?sinkRetryCount,
      'sinkRetryWait': ?sinkRetryWait,
      'type': type,
      'upsertSettings': ?upsertSettings == null ? null : upsertSettings!.toMap(),
      'writeBatchSize': ?writeBatchSize,
      'writeBatchTimeout': ?writeBatchTimeout,
      'writeMethod': ?writeMethod,
    };
  }

  factory AzurePostgreSqlSink.fromMap(Map<String, dynamic> map) {
    return AzurePostgreSqlSink(
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : map['disableMetricsCollection'],
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : map['maxConcurrentConnections'],
      preCopyScript: map['preCopyScript'] == null ? null : map['preCopyScript'],
      sinkRetryCount: map['sinkRetryCount'] == null ? null : map['sinkRetryCount'],
      sinkRetryWait: map['sinkRetryWait'] == null ? null : map['sinkRetryWait'],
      type: map['type'] as String,
      upsertSettings: map['upsertSettings'] == null ? null : AzurePostgreSqlSinkUpsertSettings.fromMap((map['upsertSettings'] as Map).cast<String, dynamic>()),
      writeBatchSize: map['writeBatchSize'] == null ? null : map['writeBatchSize'],
      writeBatchTimeout: map['writeBatchTimeout'] == null ? null : map['writeBatchTimeout'],
      writeMethod: map['writeMethod'] == null ? null : map['writeMethod'] as String,
    );
  }
}

