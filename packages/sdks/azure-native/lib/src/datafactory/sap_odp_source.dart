// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A copy activity source for SAP ODP source.
class SapOdpSource {
  /// Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  final pulumi.Input<dynamic>? additionalColumns;

  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? disableMetricsCollection;

  /// The extraction mode. Allowed value include: Full, Delta and Recovery. The default value is Full. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? extractionMode;

  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxConcurrentConnections;

  /// Specifies the columns to be selected from source data. Type: array of objects(projection) (or Expression with resultType array of objects).
  final pulumi.Input<dynamic>? projection;

  /// Query timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? queryTimeout;

  /// Specifies the selection conditions from source data. Type: array of objects(selection) (or Expression with resultType array of objects).
  final pulumi.Input<dynamic>? selection;

  /// Source retry count. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? sourceRetryCount;

  /// Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? sourceRetryWait;

  /// The subscriber process to manage the delta process. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? subscriberProcess;

  /// Copy source type.
  /// Expected value is 'SapOdpSource'.
  final pulumi.Input<String> type;

  /// Creates a new [SapOdpSource].
  /// [additionalColumns] Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [extractionMode] The extraction mode. Allowed value include: Full, Delta and Recovery. The default value is Full. Type: string (or Expression with resultType string).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [projection] Specifies the columns to be selected from source data. Type: array of objects(projection) (or Expression with resultType array of objects).
  /// [queryTimeout] Query timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [selection] Specifies the selection conditions from source data. Type: array of objects(selection) (or Expression with resultType array of objects).
  /// [sourceRetryCount] Source retry count. Type: integer (or Expression with resultType integer).
  /// [sourceRetryWait] Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [subscriberProcess] The subscriber process to manage the delta process. Type: string (or Expression with resultType string).
  /// [type] Copy source type.
  SapOdpSource({
    this.additionalColumns,
    this.disableMetricsCollection,
    this.extractionMode,
    this.maxConcurrentConnections,
    this.projection,
    this.queryTimeout,
    this.selection,
    this.sourceRetryCount,
    this.sourceRetryWait,
    this.subscriberProcess,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalColumns': ?additionalColumns,
      'disableMetricsCollection': ?disableMetricsCollection,
      'extractionMode': ?extractionMode,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'projection': ?projection,
      'queryTimeout': ?queryTimeout,
      'selection': ?selection,
      'sourceRetryCount': ?sourceRetryCount,
      'sourceRetryWait': ?sourceRetryWait,
      'subscriberProcess': ?subscriberProcess,
      'type': type,
    };
  }

  factory SapOdpSource.fromMap(Map<String, dynamic> map) {
    return SapOdpSource(
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
      extractionMode: (() {
        final guardedValue = map['extractionMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      maxConcurrentConnections: (() {
        final guardedValue = map['maxConcurrentConnections'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      projection: (() {
        final guardedValue = map['projection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      queryTimeout: (() {
        final guardedValue = map['queryTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      selection: (() {
        final guardedValue = map['selection'];
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
      subscriberProcess: (() {
        final guardedValue = map['subscriberProcess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
