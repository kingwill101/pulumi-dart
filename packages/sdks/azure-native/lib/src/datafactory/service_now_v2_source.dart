// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'expression_v2.dart';

/// A copy activity ServiceNowV2 server source.
class ServiceNowV2Source {
  /// Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  final pulumi.Input<dynamic>? additionalColumns;

  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? disableMetricsCollection;

  /// Expression to filter data from source.
  final pulumi.Input<ExpressionV2>? expression;

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

  /// Creates a new [ServiceNowV2Source].
  /// [additionalColumns] Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [expression] Expression to filter data from source.
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [pageSize] Page size of the result. Type: integer (or Expression with resultType integer).
  /// [queryTimeout] Query timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [sourceRetryCount] Source retry count. Type: integer (or Expression with resultType integer).
  /// [sourceRetryWait] Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [type] Copy source type.
  ServiceNowV2Source({
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
      'expression':
          ?pulumi.Input.mapOptionalInputValue<
            ExpressionV2,
            Map<String, dynamic>
          >(expression, (value) => value.toMap()),
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'pageSize': ?pageSize,
      'queryTimeout': ?queryTimeout,
      'sourceRetryCount': ?sourceRetryCount,
      'sourceRetryWait': ?sourceRetryWait,
      'type': type,
    };
  }

  factory ServiceNowV2Source.fromMap(Map<String, dynamic> map) {
    return ServiceNowV2Source(
      additionalColumns: (() {
        final guardedValue = map['additionalColumns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      disableMetricsCollection: (() {
        final guardedValue = map['disableMetricsCollection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      expression: (() {
        final guardedValue = map['expression'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ExpressionV2.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      maxConcurrentConnections: (() {
        final guardedValue = map['maxConcurrentConnections'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      pageSize: (() {
        final guardedValue = map['pageSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      queryTimeout: (() {
        final guardedValue = map['queryTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      sourceRetryCount: (() {
        final guardedValue = map['sourceRetryCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      sourceRetryWait: (() {
        final guardedValue = map['sourceRetryWait'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
