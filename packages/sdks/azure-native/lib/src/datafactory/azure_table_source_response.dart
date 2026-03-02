// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A copy activity Azure Table source.
class AzureTableSourceResponse {
  /// Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  final pulumi.Input<dynamic>? additionalColumns;
  /// Azure Table source ignore table not found. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? azureTableSourceIgnoreTableNotFound;
  /// Azure Table source query. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? azureTableSourceQuery;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? disableMetricsCollection;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxConcurrentConnections;
  /// Query timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? queryTimeout;
  /// Source retry count. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? sourceRetryCount;
  /// Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? sourceRetryWait;
  /// Copy source type.
  /// Expected value is 'AzureTableSource'.
  final pulumi.Input<String> type;

  /// Creates a new [AzureTableSourceResponse].
  /// [additionalColumns] Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  /// [azureTableSourceIgnoreTableNotFound] Azure Table source ignore table not found. Type: boolean (or Expression with resultType boolean).
  /// [azureTableSourceQuery] Azure Table source query. Type: string (or Expression with resultType string).
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [queryTimeout] Query timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [sourceRetryCount] Source retry count. Type: integer (or Expression with resultType integer).
  /// [sourceRetryWait] Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [type] Copy source type.
  AzureTableSourceResponse({
    this.additionalColumns,
    this.azureTableSourceIgnoreTableNotFound,
    this.azureTableSourceQuery,
    this.disableMetricsCollection,
    this.maxConcurrentConnections,
    this.queryTimeout,
    this.sourceRetryCount,
    this.sourceRetryWait,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalColumns': ?additionalColumns,
      'azureTableSourceIgnoreTableNotFound': ?azureTableSourceIgnoreTableNotFound,
      'azureTableSourceQuery': ?azureTableSourceQuery,
      'disableMetricsCollection': ?disableMetricsCollection,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'queryTimeout': ?queryTimeout,
      'sourceRetryCount': ?sourceRetryCount,
      'sourceRetryWait': ?sourceRetryWait,
      'type': type,
    };
  }

  factory AzureTableSourceResponse.fromMap(Map<String, dynamic> map) {
    return AzureTableSourceResponse(
      additionalColumns: map['additionalColumns'] == null ? null : (map['additionalColumns']!).input(),
      azureTableSourceIgnoreTableNotFound: map['azureTableSourceIgnoreTableNotFound'] == null ? null : (map['azureTableSourceIgnoreTableNotFound']!).input(),
      azureTableSourceQuery: map['azureTableSourceQuery'] == null ? null : (map['azureTableSourceQuery']!).input(),
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : (map['disableMetricsCollection']!).input(),
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : (map['maxConcurrentConnections']!).input(),
      queryTimeout: map['queryTimeout'] == null ? null : (map['queryTimeout']!).input(),
      sourceRetryCount: map['sourceRetryCount'] == null ? null : (map['sourceRetryCount']!).input(),
      sourceRetryWait: map['sourceRetryWait'] == null ? null : (map['sourceRetryWait']!).input(),
      type: (map['type'] as String).input(),
    );
  }
}

