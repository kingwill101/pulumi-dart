// ignore_for_file: unused_element, unnecessary_cast

import 'snowflake_export_copy_command_response.dart';

/// A copy activity snowflake source.
class SnowflakeV2SourceResponse {
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic disableMetricsCollection;
  /// Snowflake export settings.
  final SnowflakeExportCopyCommandResponse exportSettings;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final dynamic maxConcurrentConnections;
  /// Snowflake Sql query. Type: string (or Expression with resultType string).
  final dynamic query;
  /// Source retry count. Type: integer (or Expression with resultType integer).
  final dynamic sourceRetryCount;
  /// Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic sourceRetryWait;
  /// Copy source type.
  /// Expected value is 'SnowflakeV2Source'.
  final String type;

  /// Creates a new [SnowflakeV2SourceResponse].
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [exportSettings] Snowflake export settings.
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [query] Snowflake Sql query. Type: string (or Expression with resultType string).
  /// [sourceRetryCount] Source retry count. Type: integer (or Expression with resultType integer).
  /// [sourceRetryWait] Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [type] Copy source type.
  SnowflakeV2SourceResponse({
    this.disableMetricsCollection,
    required this.exportSettings,
    this.maxConcurrentConnections,
    this.query,
    this.sourceRetryCount,
    this.sourceRetryWait,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableMetricsCollection': ?disableMetricsCollection,
      'exportSettings': exportSettings.toMap(),
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'query': ?query,
      'sourceRetryCount': ?sourceRetryCount,
      'sourceRetryWait': ?sourceRetryWait,
      'type': type,
    };
  }

  factory SnowflakeV2SourceResponse.fromMap(Map<String, dynamic> map) {
    return SnowflakeV2SourceResponse(
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : map['disableMetricsCollection'],
      exportSettings: SnowflakeExportCopyCommandResponse.fromMap((map['exportSettings'] as Map).cast<String, dynamic>()),
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : map['maxConcurrentConnections'],
      query: map['query'] == null ? null : map['query'],
      sourceRetryCount: map['sourceRetryCount'] == null ? null : map['sourceRetryCount'],
      sourceRetryWait: map['sourceRetryWait'] == null ? null : map['sourceRetryWait'],
      type: map['type'] as String,
    );
  }
}

