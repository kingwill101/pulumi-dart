// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A copy activity Azure CosmosDB (SQL API) Collection source.
class CosmosDbSqlApiSource {
  /// Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  final pulumi.Input<dynamic>? additionalColumns;
  /// Whether detect primitive values as datetime values. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? detectDatetime;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? disableMetricsCollection;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxConcurrentConnections;
  /// Page size of the result. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? pageSize;
  /// Preferred regions. Type: array of strings (or Expression with resultType array of strings).
  final pulumi.Input<dynamic>? preferredRegions;
  /// SQL API query. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? query;
  /// Source retry count. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? sourceRetryCount;
  /// Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? sourceRetryWait;
  /// Copy source type.
  /// Expected value is 'CosmosDbSqlApiSource'.
  final pulumi.Input<String> type;

  /// Creates a new [CosmosDbSqlApiSource].
  /// [additionalColumns] Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  /// [detectDatetime] Whether detect primitive values as datetime values. Type: boolean (or Expression with resultType boolean).
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [pageSize] Page size of the result. Type: integer (or Expression with resultType integer).
  /// [preferredRegions] Preferred regions. Type: array of strings (or Expression with resultType array of strings).
  /// [query] SQL API query. Type: string (or Expression with resultType string).
  /// [sourceRetryCount] Source retry count. Type: integer (or Expression with resultType integer).
  /// [sourceRetryWait] Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [type] Copy source type.
  CosmosDbSqlApiSource({
    this.additionalColumns,
    this.detectDatetime,
    this.disableMetricsCollection,
    this.maxConcurrentConnections,
    this.pageSize,
    this.preferredRegions,
    this.query,
    this.sourceRetryCount,
    this.sourceRetryWait,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalColumns': ?additionalColumns,
      'detectDatetime': ?detectDatetime,
      'disableMetricsCollection': ?disableMetricsCollection,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'pageSize': ?pageSize,
      'preferredRegions': ?preferredRegions,
      'query': ?query,
      'sourceRetryCount': ?sourceRetryCount,
      'sourceRetryWait': ?sourceRetryWait,
      'type': type,
    };
  }

  factory CosmosDbSqlApiSource.fromMap(Map<String, dynamic> map) {
    return CosmosDbSqlApiSource(
      additionalColumns: map['additionalColumns'] == null ? null : (map['additionalColumns']).input(),
      detectDatetime: map['detectDatetime'] == null ? null : (map['detectDatetime']).input(),
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : (map['disableMetricsCollection']).input(),
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : (map['maxConcurrentConnections']).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize']).input(),
      preferredRegions: map['preferredRegions'] == null ? null : (map['preferredRegions']).input(),
      query: map['query'] == null ? null : (map['query']).input(),
      sourceRetryCount: map['sourceRetryCount'] == null ? null : (map['sourceRetryCount']).input(),
      sourceRetryWait: map['sourceRetryWait'] == null ? null : (map['sourceRetryWait']).input(),
      type: (map['type'] as String).input(),
    );
  }
}

