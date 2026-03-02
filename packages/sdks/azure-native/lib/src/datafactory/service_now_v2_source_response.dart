// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'expression_v2_response.dart';

/// A copy activity ServiceNowV2 server source.
class ServiceNowV2SourceResponse {
  /// Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  final pulumi.Input<dynamic>? additionalColumns;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? disableMetricsCollection;
  /// Expression to filter data from source.
  final pulumi.Input<ExpressionV2Response>? expression;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxConcurrentConnections;
  /// Page size of the result. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? pageSize;
  /// Query timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? queryTimeout;
  /// Source retry count. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? sourceRetryCount;
  /// Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? sourceRetryWait;
  /// Copy source type.
  /// Expected value is 'ServiceNowV2Source'.
  final pulumi.Input<String> type;

  /// Creates a new [ServiceNowV2SourceResponse].
  /// [additionalColumns] Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [expression] Expression to filter data from source.
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [pageSize] Page size of the result. Type: integer (or Expression with resultType integer).
  /// [queryTimeout] Query timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [sourceRetryCount] Source retry count. Type: integer (or Expression with resultType integer).
  /// [sourceRetryWait] Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [type] Copy source type.
  ServiceNowV2SourceResponse({
    this.additionalColumns,
    this.disableMetricsCollection,
    this.expression,
    this.maxConcurrentConnections,
    this.pageSize,
    this.queryTimeout,
    this.sourceRetryCount,
    this.sourceRetryWait,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalColumns': ?additionalColumns,
      'disableMetricsCollection': ?disableMetricsCollection,
      'expression': ?pulumi.Input.mapOptionalInputValue<ExpressionV2Response, Map<String, dynamic>>(expression, (value) => value.toMap()),
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'pageSize': ?pageSize,
      'queryTimeout': ?queryTimeout,
      'sourceRetryCount': ?sourceRetryCount,
      'sourceRetryWait': ?sourceRetryWait,
      'type': type,
    };
  }

  factory ServiceNowV2SourceResponse.fromMap(Map<String, dynamic> map) {
    return ServiceNowV2SourceResponse(
      additionalColumns: map['additionalColumns'] == null ? null : (map['additionalColumns']!).input(),
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : (map['disableMetricsCollection']!).input(),
      expression: map['expression'] == null ? null : (ExpressionV2Response.fromMap((map['expression']! as Map).cast<String, dynamic>())).input(),
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : (map['maxConcurrentConnections']!).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize']!).input(),
      queryTimeout: map['queryTimeout'] == null ? null : (map['queryTimeout']!).input(),
      sourceRetryCount: map['sourceRetryCount'] == null ? null : (map['sourceRetryCount']!).input(),
      sourceRetryWait: map['sourceRetryWait'] == null ? null : (map['sourceRetryWait']!).input(),
      type: (map['type'] as String).input(),
    );
  }
}

