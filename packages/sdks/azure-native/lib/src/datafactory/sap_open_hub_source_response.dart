// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A copy activity source for SAP Business Warehouse Open Hub Destination source.
class SapOpenHubSourceResponse {
  /// Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  final pulumi.Input<dynamic>? additionalColumns;
  /// The ID of request for delta loading. Once it is set, only data with requestId larger than the value of this property will be retrieved. The default value is 0. Type: integer (or Expression with resultType integer ).
  final pulumi.Input<dynamic>? baseRequestId;
  /// Specifies the custom RFC function module that will be used to read data from SAP Table. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? customRfcReadTableFunctionModule;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? disableMetricsCollection;
  /// Whether to exclude the records of the last request. The default value is true. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? excludeLastRequest;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxConcurrentConnections;
  /// Query timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? queryTimeout;
  /// The single character that will be used as delimiter passed to SAP RFC as well as splitting the output data retrieved. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? sapDataColumnDelimiter;
  /// Source retry count. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? sourceRetryCount;
  /// Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? sourceRetryWait;
  /// Copy source type.
  /// Expected value is 'SapOpenHubSource'.
  final pulumi.Input<String> type;

  /// Creates a new [SapOpenHubSourceResponse].
  /// [additionalColumns] Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  /// [baseRequestId] The ID of request for delta loading. Once it is set, only data with requestId larger than the value of this property will be retrieved. The default value is 0. Type: integer (or Expression with resultType integer ).
  /// [customRfcReadTableFunctionModule] Specifies the custom RFC function module that will be used to read data from SAP Table. Type: string (or Expression with resultType string).
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [excludeLastRequest] Whether to exclude the records of the last request. The default value is true. Type: boolean (or Expression with resultType boolean).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [queryTimeout] Query timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [sapDataColumnDelimiter] The single character that will be used as delimiter passed to SAP RFC as well as splitting the output data retrieved. Type: string (or Expression with resultType string).
  /// [sourceRetryCount] Source retry count. Type: integer (or Expression with resultType integer).
  /// [sourceRetryWait] Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [type] Copy source type.
  SapOpenHubSourceResponse({
    this.additionalColumns,
    this.baseRequestId,
    this.customRfcReadTableFunctionModule,
    this.disableMetricsCollection,
    this.excludeLastRequest,
    this.maxConcurrentConnections,
    this.queryTimeout,
    this.sapDataColumnDelimiter,
    this.sourceRetryCount,
    this.sourceRetryWait,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalColumns': ?additionalColumns,
      'baseRequestId': ?baseRequestId,
      'customRfcReadTableFunctionModule': ?customRfcReadTableFunctionModule,
      'disableMetricsCollection': ?disableMetricsCollection,
      'excludeLastRequest': ?excludeLastRequest,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'queryTimeout': ?queryTimeout,
      'sapDataColumnDelimiter': ?sapDataColumnDelimiter,
      'sourceRetryCount': ?sourceRetryCount,
      'sourceRetryWait': ?sourceRetryWait,
      'type': type,
    };
  }

  factory SapOpenHubSourceResponse.fromMap(Map<String, dynamic> map) {
    return SapOpenHubSourceResponse(
      additionalColumns: map['additionalColumns'] == null ? null : (map['additionalColumns']).input(),
      baseRequestId: map['baseRequestId'] == null ? null : (map['baseRequestId']).input(),
      customRfcReadTableFunctionModule: map['customRfcReadTableFunctionModule'] == null ? null : (map['customRfcReadTableFunctionModule']).input(),
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : (map['disableMetricsCollection']).input(),
      excludeLastRequest: map['excludeLastRequest'] == null ? null : (map['excludeLastRequest']).input(),
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : (map['maxConcurrentConnections']).input(),
      queryTimeout: map['queryTimeout'] == null ? null : (map['queryTimeout']).input(),
      sapDataColumnDelimiter: map['sapDataColumnDelimiter'] == null ? null : (map['sapDataColumnDelimiter']).input(),
      sourceRetryCount: map['sourceRetryCount'] == null ? null : (map['sourceRetryCount']).input(),
      sourceRetryWait: map['sourceRetryWait'] == null ? null : (map['sourceRetryWait']).input(),
      type: (map['type'] as String).input(),
    );
  }
}

