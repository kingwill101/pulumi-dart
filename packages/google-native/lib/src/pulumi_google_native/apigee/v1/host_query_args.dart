// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_query_metric.dart';

/// The set of arguments for HostQuery.
class HostQueryArgs {
  /// Delimiter used in the CSV file, if `outputFormat` is set to `csv`. Defaults to the `,` (comma) character. Supported delimiter characters include comma (`,`), pipe (`|`), and tab (`\t`).
  final pulumi.Input<String>? csvDelimiter;

  /// A list of dimensions. https://docs.apigee.com/api-platform/analytics/analytics-reference#dimensions
  final pulumi.Input<List<String>>? dimensions;

  /// Hostname needs to be specified if query intends to run at host level. This field is only allowed when query is submitted by CreateHostAsyncQuery where analytics data will be grouped by organization and hostname.
  final pulumi.Input<String>? envgroupHostname;

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

  HostQueryArgs({
    this.csvDelimiter,
    this.dimensions,
    this.envgroupHostname,
    this.filter,
    this.groupByTimeUnit,
    this.limit,
    this.metrics,
    this.name,
    required this.organizationId,
    this.outputFormat,
    this.reportDefinitionId,
    required this.timeRange,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final csvDelimiterValue = csvDelimiter;
    if (csvDelimiterValue != null) {
      map['csvDelimiter'] = csvDelimiterValue;
    }
    final dimensionsValue = dimensions;
    if (dimensionsValue != null) {
      map['dimensions'] = dimensionsValue;
    }
    final envgroupHostnameValue = envgroupHostname;
    if (envgroupHostnameValue != null) {
      map['envgroupHostname'] = envgroupHostnameValue;
    }
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    final groupByTimeUnitValue = groupByTimeUnit;
    if (groupByTimeUnitValue != null) {
      map['groupByTimeUnit'] = groupByTimeUnitValue;
    }
    final limitValue = limit;
    if (limitValue != null) {
      map['limit'] = limitValue;
    }
    final metricsValue = metrics;
    if (metricsValue != null) {
      map['metrics'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudApigeeV1QueryMetric>, List<Map<String, dynamic>>>(
          metricsValue,
          (value) => pulumi.Input.encodeList<GoogleCloudApigeeV1QueryMetric,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['organizationId'] = organizationId;
    final outputFormatValue = outputFormat;
    if (outputFormatValue != null) {
      map['outputFormat'] = outputFormatValue;
    }
    final reportDefinitionIdValue = reportDefinitionId;
    if (reportDefinitionIdValue != null) {
      map['reportDefinitionId'] = reportDefinitionIdValue;
    }
    map['timeRange'] = timeRange;
    return map;
  }

  factory HostQueryArgs.fromMap(Map<String, dynamic> map) {
    return HostQueryArgs(
      csvDelimiter: pulumi.Input.asOptionalInput<String>(map['csvDelimiter']),
      dimensions: pulumi.Input.asOptionalInput<List<String>>(map['dimensions']),
      envgroupHostname:
          pulumi.Input.asOptionalInput<String>(map['envgroupHostname']),
      filter: pulumi.Input.asOptionalInput<String>(map['filter']),
      groupByTimeUnit:
          pulumi.Input.asOptionalInput<String>(map['groupByTimeUnit']),
      limit: pulumi.Input.asOptionalInput<int>(map['limit']),
      metrics:
          pulumi.Input.asOptionalInput<List<GoogleCloudApigeeV1QueryMetric>>(
              map['metrics']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      outputFormat: pulumi.Input.asOptionalInput<String>(map['outputFormat']),
      reportDefinitionId:
          pulumi.Input.asOptionalInput<String>(map['reportDefinitionId']),
      timeRange: pulumi.Input.asInput<dynamic>(map['timeRange']),
    );
  }
}
