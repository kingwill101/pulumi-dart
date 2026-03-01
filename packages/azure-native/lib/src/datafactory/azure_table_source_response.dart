// ignore_for_file: unused_element, unnecessary_cast


/// A copy activity Azure Table source.
class AzureTableSourceResponse {
  /// Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  final dynamic additionalColumns;
  /// Azure Table source ignore table not found. Type: boolean (or Expression with resultType boolean).
  final dynamic azureTableSourceIgnoreTableNotFound;
  /// Azure Table source query. Type: string (or Expression with resultType string).
  final dynamic azureTableSourceQuery;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic disableMetricsCollection;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final dynamic maxConcurrentConnections;
  /// Query timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic queryTimeout;
  /// Source retry count. Type: integer (or Expression with resultType integer).
  final dynamic sourceRetryCount;
  /// Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic sourceRetryWait;
  /// Copy source type.
  /// Expected value is 'AzureTableSource'.
  final String type;

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
      additionalColumns: map['additionalColumns'] == null ? null : map['additionalColumns'],
      azureTableSourceIgnoreTableNotFound: map['azureTableSourceIgnoreTableNotFound'] == null ? null : map['azureTableSourceIgnoreTableNotFound'],
      azureTableSourceQuery: map['azureTableSourceQuery'] == null ? null : map['azureTableSourceQuery'],
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : map['disableMetricsCollection'],
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : map['maxConcurrentConnections'],
      queryTimeout: map['queryTimeout'] == null ? null : map['queryTimeout'],
      sourceRetryCount: map['sourceRetryCount'] == null ? null : map['sourceRetryCount'],
      sourceRetryWait: map['sourceRetryWait'] == null ? null : map['sourceRetryWait'],
      type: map['type'] as String,
    );
  }
}

