// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'teradata_partition_settings.dart';

/// A copy activity Teradata source.
class TeradataSource {
  /// Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  final pulumi.Input<dynamic>? additionalColumns;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? disableMetricsCollection;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxConcurrentConnections;
  /// The partition mechanism that will be used for teradata read in parallel. Possible values include: "None", "Hash", "DynamicRange".
  final pulumi.Input<dynamic>? partitionOption;
  /// The settings that will be leveraged for teradata source partitioning.
  final pulumi.Input<TeradataPartitionSettings>? partitionSettings;
  /// Teradata query. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? query;
  /// Query timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? queryTimeout;
  /// Source retry count. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? sourceRetryCount;
  /// Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? sourceRetryWait;
  /// Copy source type.
  /// Expected value is 'TeradataSource'.
  final pulumi.Input<String> type;

  /// Creates a new [TeradataSource].
  /// [additionalColumns] Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [partitionOption] The partition mechanism that will be used for teradata read in parallel. Possible values include: "None", "Hash", "DynamicRange".
  /// [partitionSettings] The settings that will be leveraged for teradata source partitioning.
  /// [query] Teradata query. Type: string (or Expression with resultType string).
  /// [queryTimeout] Query timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [sourceRetryCount] Source retry count. Type: integer (or Expression with resultType integer).
  /// [sourceRetryWait] Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [type] Copy source type.
  TeradataSource({
    this.additionalColumns,
    this.disableMetricsCollection,
    this.maxConcurrentConnections,
    this.partitionOption,
    this.partitionSettings,
    this.query,
    this.queryTimeout,
    this.sourceRetryCount,
    this.sourceRetryWait,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalColumns': ?additionalColumns,
      'disableMetricsCollection': ?disableMetricsCollection,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'partitionOption': ?partitionOption,
      'partitionSettings': ?pulumi.Input.mapOptionalInputValue<TeradataPartitionSettings, Map<String, dynamic>>(partitionSettings, (value) => value.toMap()),
      'query': ?query,
      'queryTimeout': ?queryTimeout,
      'sourceRetryCount': ?sourceRetryCount,
      'sourceRetryWait': ?sourceRetryWait,
      'type': type,
    };
  }

  factory TeradataSource.fromMap(Map<String, dynamic> map) {
    return TeradataSource(
      additionalColumns: map['additionalColumns'] == null ? null : (map['additionalColumns']!).input(),
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : (map['disableMetricsCollection']!).input(),
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : (map['maxConcurrentConnections']!).input(),
      partitionOption: map['partitionOption'] == null ? null : (map['partitionOption']!).input(),
      partitionSettings: map['partitionSettings'] == null ? null : (TeradataPartitionSettings.fromMap((map['partitionSettings']! as Map).cast<String, dynamic>())).input(),
      query: map['query'] == null ? null : (map['query']!).input(),
      queryTimeout: map['queryTimeout'] == null ? null : (map['queryTimeout']!).input(),
      sourceRetryCount: map['sourceRetryCount'] == null ? null : (map['sourceRetryCount']!).input(),
      sourceRetryWait: map['sourceRetryWait'] == null ? null : (map['sourceRetryWait']!).input(),
      type: (map['type'] as String).input(),
    );
  }
}

