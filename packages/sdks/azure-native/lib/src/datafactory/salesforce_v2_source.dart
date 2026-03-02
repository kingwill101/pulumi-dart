// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A copy activity Salesforce V2 source.
class SalesforceV2Source {
  /// Specifies the additional columns to be added to source data. Type: array of objects(AdditionalColumns) (or Expression with resultType array of objects).
  final pulumi.Input<dynamic>? additionalColumns;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? disableMetricsCollection;
  /// This property control whether query result contains Deleted objects. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? includeDeletedObjects;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxConcurrentConnections;
  /// Page size for each http request, too large pageSize will caused timeout, default 300,000. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? pageSize;
  /// Partition option for the SalesforceV2 connector in copy activity, AutoDetect or None. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? partitionOption;
  /// You can only use Salesforce Object Query Language (SOQL) query with limitations. For SOQL limitations, see this article: https://developer.salesforce.com/docs/atlas.en-us.api_asynch.meta/api_asynch/queries.htm#SOQL%20Considerations. If query is not specified, all the data of the Salesforce object specified in ObjectApiName/reportId in dataset will be retrieved. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? query;
  /// Query timeout. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? queryTimeout;
  /// Deprecating, please use 'query' property instead. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? sOQLQuery;
  /// Source retry count. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? sourceRetryCount;
  /// Source retry wait. Type: string (or Expression with resultType string), pattern: ((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9])).
  final pulumi.Input<dynamic>? sourceRetryWait;
  /// Copy source type.
  /// Expected value is 'SalesforceV2Source'.
  final pulumi.Input<String> type;

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
      additionalColumns: map['additionalColumns'] == null ? null : (map['additionalColumns']!).input(),
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : (map['disableMetricsCollection']!).input(),
      includeDeletedObjects: map['includeDeletedObjects'] == null ? null : (map['includeDeletedObjects']!).input(),
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : (map['maxConcurrentConnections']!).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize']!).input(),
      partitionOption: map['partitionOption'] == null ? null : (map['partitionOption']!).input(),
      query: map['query'] == null ? null : (map['query']!).input(),
      queryTimeout: map['queryTimeout'] == null ? null : (map['queryTimeout']!).input(),
      sOQLQuery: map['sOQLQuery'] == null ? null : (map['sOQLQuery']!).input(),
      sourceRetryCount: map['sourceRetryCount'] == null ? null : (map['sourceRetryCount']!).input(),
      sourceRetryWait: map['sourceRetryWait'] == null ? null : (map['sourceRetryWait']!).input(),
      type: (map['type'] as String).input(),
    );
  }
}

