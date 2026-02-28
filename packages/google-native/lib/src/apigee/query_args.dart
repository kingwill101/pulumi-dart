// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_query_metric.dart';

/// {@template pulumi_apigee_v1_query_args_doc}
/// The set of arguments for Query.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_query_args_doc}
class QueryArgs {
  /// Delimiter used in the CSV file, if `outputFormat` is set to `csv`. Defaults to the `,` (comma) character. Supported delimiter characters include comma (`,`), pipe (`|`), and tab (`\t`).
  final pulumi.Input<String>? csvDelimiter;
  /// A list of dimensions. https://docs.apigee.com/api-platform/analytics/analytics-reference#dimensions
  final pulumi.Input<List<String>>? dimensions;
  /// Hostname needs to be specified if query intends to run at host level. This field is only allowed when query is submitted by CreateHostAsyncQuery where analytics data will be grouped by organization and hostname.
  final pulumi.Input<String>? envgroupHostname;
  final pulumi.Input<String> environmentId;
  /// Boolean expression that can be used to filter data. Filter expressions can be combined using AND/OR terms and should be fully parenthesized to avoid ambiguity. See Analytics metrics, dimensions, and filters reference https://docs.apigee.com/api-platform/analytics/analytics-reference for more information on the fields available to filter on. For more information on the tokens that you use to build filter expressions, see Filter expression syntax. https://docs.apigee.com/api-platform/analytics/asynch-reports-api#filter-expression-syntax
  final pulumi.Input<String>? filter;
  /// Time unit used to group the result set. Valid values include: second, minute, hour, day, week, or month. If a query includes groupByTimeUnit, then the result is an aggregation based on the specified time unit and the resultant timestamp does not include milliseconds precision. If a query omits groupByTimeUnit, then the resultant timestamp includes milliseconds precision.
  final pulumi.Input<String>? groupByTimeUnit;
  /// Maximum number of rows that can be returned in the result.
  final pulumi.Input<int>? limit;
  /// A list of Metrics.
  final pulumi.Input<List<GoogleCloudApigeeV1QueryMetric>>? metrics;
  /// Asynchronous Query Name.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;
  /// Valid values include: `csv` or `json`. Defaults to `json`. Note: Configure the delimiter for CSV output using the csvDelimiter property.
  final pulumi.Input<String>? outputFormat;
  /// Asynchronous Report ID.
  final pulumi.Input<String>? reportDefinitionId;
  /// Time range for the query. Can use the following predefined strings to specify the time range: `last60minutes` `last24hours` `last7days` Or, specify the timeRange as a structure describing start and end timestamps in the ISO format: yyyy-mm-ddThh:mm:ssZ. Example: "timeRange": { "start": "2018-07-29T00:13:00Z", "end": "2018-08-01T00:18:00Z" }
  final pulumi.Input<dynamic> timeRange;

  /// Creates a new [QueryArgs].
  /// [csvDelimiter] Delimiter used in the CSV file, if `outputFormat` is set to `csv`. Defaults to the `,` (comma) character. Supported delimiter characters include comma (`,`), pipe (`|`), and tab (`\t`).
  /// [dimensions] A list of dimensions. https://docs.apigee.com/api-platform/analytics/analytics-reference#dimensions
  /// [envgroupHostname] Hostname needs to be specified if query intends to run at host level. This field is only allowed when query is submitted by CreateHostAsyncQuery where analytics data will be grouped by organization and hostname.
  /// [environmentId] Required.
  /// [filter] Boolean expression that can be used to filter data. Filter expressions can be combined using AND/OR terms and should be fully parenthesized to avoid ambiguity. See Analytics metrics, dimensions, and filters reference https://docs.apigee.com/api-platform/analytics/analytics-reference for more information on the fields available to filter on. For more information on the tokens that you use to build filter expressions, see Filter expression syntax. https://docs.apigee.com/api-platform/analytics/asynch-reports-api#filter-expression-syntax
  /// [groupByTimeUnit] Time unit used to group the result set. Valid values include: second, minute, hour, day, week, or month. If a query includes groupByTimeUnit, then the result is an aggregation based on the specified time unit and the resultant timestamp does not include milliseconds precision. If a query omits groupByTimeUnit, then the resultant timestamp includes milliseconds precision.
  /// [limit] Maximum number of rows that can be returned in the result.
  /// [metrics] A list of Metrics.
  /// [name] Asynchronous Query Name.
  /// [organizationId] Required.
  /// [outputFormat] Valid values include: `csv` or `json`. Defaults to `json`. Note: Configure the delimiter for CSV output using the csvDelimiter property.
  /// [reportDefinitionId] Asynchronous Report ID.
  /// [timeRange] Time range for the query. Can use the following predefined strings to specify the time range: `last60minutes` `last24hours` `last7days` Or, specify the timeRange as a structure describing start and end timestamps in the ISO format: yyyy-mm-ddThh:mm:ssZ. Example: "timeRange": { "start": "2018-07-29T00:13:00Z", "end": "2018-08-01T00:18:00Z" }
  QueryArgs({
    String? csvDelimiter,
    List<String>? dimensions,
    String? envgroupHostname,
    required String environmentId,
    String? filter,
    String? groupByTimeUnit,
    int? limit,
    List<GoogleCloudApigeeV1QueryMetric>? metrics,
    String? name,
    required String organizationId,
    String? outputFormat,
    String? reportDefinitionId,
    required dynamic timeRange,
  }) :
      csvDelimiter = pulumi.Input.asOptionalInput<String>(csvDelimiter),
      dimensions = pulumi.Input.asOptionalInput<List<String>>(dimensions),
      envgroupHostname = pulumi.Input.asOptionalInput<String>(envgroupHostname),
      environmentId = pulumi.Input.asInput<String>(environmentId),
      filter = pulumi.Input.asOptionalInput<String>(filter),
      groupByTimeUnit = pulumi.Input.asOptionalInput<String>(groupByTimeUnit),
      limit = pulumi.Input.asOptionalInput<int>(limit),
      metrics = pulumi.Input.asOptionalInput<List<GoogleCloudApigeeV1QueryMetric>>(metrics),
      name = pulumi.Input.asOptionalInput<String>(name),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      outputFormat = pulumi.Input.asOptionalInput<String>(outputFormat),
      reportDefinitionId = pulumi.Input.asOptionalInput<String>(reportDefinitionId),
      timeRange = pulumi.Input.asInput<dynamic>(timeRange);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'csvDelimiter': ?csvDelimiter,
      'dimensions': ?dimensions,
      'envgroupHostname': ?envgroupHostname,
      'environmentId': environmentId,
      'filter': ?filter,
      'groupByTimeUnit': ?groupByTimeUnit,
      'limit': ?limit,
      'metrics': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudApigeeV1QueryMetric>, List<Map<String, dynamic>>>(metrics, (value) => pulumi.Input.encodeList<GoogleCloudApigeeV1QueryMetric, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'organizationId': organizationId,
      'outputFormat': ?outputFormat,
      'reportDefinitionId': ?reportDefinitionId,
      'timeRange': timeRange,
    };
  }

  factory QueryArgs.fromMap(Map<String, dynamic> map) {
    return QueryArgs(
      csvDelimiter: map['csvDelimiter'] == null ? null : map['csvDelimiter'] as String,
      dimensions: map['dimensions'] == null ? null : (map['dimensions'] as List).cast<String>(),
      envgroupHostname: map['envgroupHostname'] == null ? null : map['envgroupHostname'] as String,
      environmentId: map['environmentId'] as String,
      filter: map['filter'] == null ? null : map['filter'] as String,
      groupByTimeUnit: map['groupByTimeUnit'] == null ? null : map['groupByTimeUnit'] as String,
      limit: map['limit'] == null ? null : map['limit'] as int,
      metrics: map['metrics'] == null ? null : pulumi.Input.decodeList<GoogleCloudApigeeV1QueryMetric>(map['metrics'], (value) => GoogleCloudApigeeV1QueryMetric.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      organizationId: map['organizationId'] as String,
      outputFormat: map['outputFormat'] == null ? null : map['outputFormat'] as String,
      reportDefinitionId: map['reportDefinitionId'] == null ? null : map['reportDefinitionId'] as String,
      timeRange: map['timeRange'],
    );
  }
}

