// ignore_for_file: unused_element, unnecessary_cast

import 'teradata_partition_settings_response.dart';

/// A copy activity Teradata source.
class TeradataSourceResponse {
  /// Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  final dynamic additionalColumns;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic disableMetricsCollection;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final dynamic maxConcurrentConnections;
  /// The partition mechanism that will be used for teradata read in parallel. Possible values include: "None", "Hash", "DynamicRange".
  final dynamic partitionOption;
  /// The settings that will be leveraged for teradata source partitioning.
  final TeradataPartitionSettingsResponse? partitionSettings;
  /// Teradata query. Type: string (or Expression with resultType string).
  final dynamic query;
  /// Query timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic queryTimeout;
  /// Source retry count. Type: integer (or Expression with resultType integer).
  final dynamic sourceRetryCount;
  /// Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic sourceRetryWait;
  /// Copy source type.
  /// Expected value is 'TeradataSource'.
  final String type;

  /// Creates a new [TeradataSourceResponse].
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
  TeradataSourceResponse({
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
      'partitionSettings': ?partitionSettings == null ? null : partitionSettings!.toMap(),
      'query': ?query,
      'queryTimeout': ?queryTimeout,
      'sourceRetryCount': ?sourceRetryCount,
      'sourceRetryWait': ?sourceRetryWait,
      'type': type,
    };
  }

  factory TeradataSourceResponse.fromMap(Map<String, dynamic> map) {
    return TeradataSourceResponse(
      additionalColumns: map['additionalColumns'] == null ? null : map['additionalColumns'],
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : map['disableMetricsCollection'],
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : map['maxConcurrentConnections'],
      partitionOption: map['partitionOption'] == null ? null : map['partitionOption'],
      partitionSettings: map['partitionSettings'] == null ? null : TeradataPartitionSettingsResponse.fromMap((map['partitionSettings'] as Map).cast<String, dynamic>()),
      query: map['query'] == null ? null : map['query'],
      queryTimeout: map['queryTimeout'] == null ? null : map['queryTimeout'],
      sourceRetryCount: map['sourceRetryCount'] == null ? null : map['sourceRetryCount'],
      sourceRetryWait: map['sourceRetryWait'] == null ? null : map['sourceRetryWait'],
      type: map['type'] as String,
    );
  }
}

