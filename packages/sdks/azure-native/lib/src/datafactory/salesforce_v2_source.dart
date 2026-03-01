// ignore_for_file: unused_element, unnecessary_cast


/// A copy activity Salesforce V2 source.
class SalesforceV2Source {
  /// Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  final dynamic additionalColumns;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic disableMetricsCollection;
  /// This property control whether query result contains Deleted objects. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic includeDeletedObjects;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final dynamic maxConcurrentConnections;
  /// Page size for each http request, too large pageSize will caused timeout, default 300,000. Type: integer (or Expression with resultType integer).
  final dynamic pageSize;
  /// Partition option for the SalesforceV2 connector in copy activity, AutoDetect or None. Type: string (or Expression with resultType string).
  final dynamic partitionOption;
  /// You can only use Salesforce Object Query Language (SOQL) query with limitations. For SOQL limitations, see this article: https://developer.salesforce.com/docs/atlas.en-us.api_asynch.meta/api_asynch/queries.htm#SOQL%20Considerations. If query is not specified, all the data of the Salesforce object specified in ObjectApiName/reportId in dataset will be retrieved. Type: string (or Expression with resultType string).
  final dynamic query;
  /// Query timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic queryTimeout;
  /// Deprecating, please use 'query' property instead. Type: string (or Expression with resultType string).
  final dynamic sOQLQuery;
  /// Source retry count. Type: integer (or Expression with resultType integer).
  final dynamic sourceRetryCount;
  /// Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final dynamic sourceRetryWait;
  /// Copy source type.
  /// Expected value is 'SalesforceV2Source'.
  final String type;

  /// Creates a new [SalesforceV2Source].
  /// [additionalColumns] Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [includeDeletedObjects] This property control whether query result contains Deleted objects. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [pageSize] Page size for each http request, too large pageSize will caused timeout, default 300,000. Type: integer (or Expression with resultType integer).
  /// [partitionOption] Partition option for the SalesforceV2 connector in copy activity, AutoDetect or None. Type: string (or Expression with resultType string).
  /// [query] You can only use Salesforce Object Query Language (SOQL) query with limitations. For SOQL limitations, see this article: https://developer.salesforce.com/docs/atlas.en-us.api_asynch.meta/api_asynch/queries.htm#SOQL%20Considerations. If query is not specified, all the data of the Salesforce object specified in ObjectApiName/reportId in dataset will be retrieved. Type: string (or Expression with resultType string).
  /// [queryTimeout] Query timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [sOQLQuery] Deprecating, please use 'query' property instead. Type: string (or Expression with resultType string).
  /// [sourceRetryCount] Source retry count. Type: integer (or Expression with resultType integer).
  /// [sourceRetryWait] Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  /// [type] Copy source type.
  SalesforceV2Source({
    this.additionalColumns,
    this.disableMetricsCollection,
    this.includeDeletedObjects,
    this.maxConcurrentConnections,
    this.pageSize,
    this.partitionOption,
    this.query,
    this.queryTimeout,
    this.sOQLQuery,
    this.sourceRetryCount,
    this.sourceRetryWait,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalColumns': ?additionalColumns,
      'disableMetricsCollection': ?disableMetricsCollection,
      'includeDeletedObjects': ?includeDeletedObjects,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'pageSize': ?pageSize,
      'partitionOption': ?partitionOption,
      'query': ?query,
      'queryTimeout': ?queryTimeout,
      'sOQLQuery': ?sOQLQuery,
      'sourceRetryCount': ?sourceRetryCount,
      'sourceRetryWait': ?sourceRetryWait,
      'type': type,
    };
  }

  factory SalesforceV2Source.fromMap(Map<String, dynamic> map) {
    return SalesforceV2Source(
      additionalColumns: map['additionalColumns'] == null ? null : map['additionalColumns'],
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : map['disableMetricsCollection'],
      includeDeletedObjects: map['includeDeletedObjects'] == null ? null : map['includeDeletedObjects'],
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : map['maxConcurrentConnections'],
      pageSize: map['pageSize'] == null ? null : map['pageSize'],
      partitionOption: map['partitionOption'] == null ? null : map['partitionOption'],
      query: map['query'] == null ? null : map['query'],
      queryTimeout: map['queryTimeout'] == null ? null : map['queryTimeout'],
      sOQLQuery: map['sOQLQuery'] == null ? null : map['sOQLQuery'],
      sourceRetryCount: map['sourceRetryCount'] == null ? null : map['sourceRetryCount'],
      sourceRetryWait: map['sourceRetryWait'] == null ? null : map['sourceRetryWait'],
      type: map['type'] as String,
    );
  }
}

