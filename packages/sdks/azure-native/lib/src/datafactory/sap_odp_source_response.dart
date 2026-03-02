// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A copy activity source for SAP ODP source.
class SapOdpSourceResponse {
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

  /// Creates a new [SapOdpSourceResponse].
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
  SapOdpSourceResponse({
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

  factory SapOdpSourceResponse.fromMap(Map<String, dynamic> map) {
    return SapOdpSourceResponse(
      additionalColumns: map['additionalColumns'] == null ? null : (map['additionalColumns']!).input(),
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : (map['disableMetricsCollection']!).input(),
      extractionMode: map['extractionMode'] == null ? null : (map['extractionMode']!).input(),
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : (map['maxConcurrentConnections']!).input(),
      projection: map['projection'] == null ? null : (map['projection']!).input(),
      queryTimeout: map['queryTimeout'] == null ? null : (map['queryTimeout']!).input(),
      selection: map['selection'] == null ? null : (map['selection']!).input(),
      sourceRetryCount: map['sourceRetryCount'] == null ? null : (map['sourceRetryCount']!).input(),
      sourceRetryWait: map['sourceRetryWait'] == null ? null : (map['sourceRetryWait']!).input(),
      subscriberProcess: map['subscriberProcess'] == null ? null : (map['subscriberProcess']!).input(),
      type: (map['type'] as String).input(),
    );
  }
}

