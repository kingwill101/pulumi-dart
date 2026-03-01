// ignore_for_file: unused_element, unnecessary_cast


/// A copy activity source for SAP ODP source.
class SapOdpSource {
  /// Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  final dynamic additionalColumns;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic disableMetricsCollection;
  /// The extraction mode. Allowed value include: Full, Delta and Recovery. The default value is Full. Type: string (or Expression with resultType string).
  final dynamic extractionMode;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final dynamic maxConcurrentConnections;
  /// Specifies the columns to be selected from source data. Type: array of objects(projection) (or Expression with resultType array of objects).
  final dynamic projection;
  /// Query timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic queryTimeout;
  /// Specifies the selection conditions from source data. Type: array of objects(selection) (or Expression with resultType array of objects).
  final dynamic selection;
  /// Source retry count. Type: integer (or Expression with resultType integer).
  final dynamic sourceRetryCount;
  /// Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic sourceRetryWait;
  /// The subscriber process to manage the delta process. Type: string (or Expression with resultType string).
  final dynamic subscriberProcess;
  /// Copy source type.
  /// Expected value is 'SapOdpSource'.
  final String type;

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
      additionalColumns: map['additionalColumns'] == null ? null : map['additionalColumns'],
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : map['disableMetricsCollection'],
      extractionMode: map['extractionMode'] == null ? null : map['extractionMode'],
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : map['maxConcurrentConnections'],
      projection: map['projection'] == null ? null : map['projection'],
      queryTimeout: map['queryTimeout'] == null ? null : map['queryTimeout'],
      selection: map['selection'] == null ? null : map['selection'],
      sourceRetryCount: map['sourceRetryCount'] == null ? null : map['sourceRetryCount'],
      sourceRetryWait: map['sourceRetryWait'] == null ? null : map['sourceRetryWait'],
      subscriberProcess: map['subscriberProcess'] == null ? null : map['subscriberProcess'],
      type: map['type'] as String,
    );
  }
}

