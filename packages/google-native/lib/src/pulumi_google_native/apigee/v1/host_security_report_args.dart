// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_apigee_v1_security_report_query_metric.dart';

/// The set of arguments for HostSecurityReport.
class HostSecurityReportArgs {
  /// Delimiter used in the CSV file, if `outputFormat` is set to `csv`. Defaults to the `,` (comma) character. Supported delimiter characters include comma (`,`), pipe (`|`), and tab (`\t`).
  final Input<String>? csvDelimiter;

  /// A list of dimensions. https://docs.apigee.com/api-platform/analytics/analytics-reference#dimensions
  final Input<List<String>>? dimensions;

  /// Security Report display name which users can specify.
  final Input<String>? displayName;

  /// Hostname needs to be specified if query intends to run at host level. This field is only allowed when query is submitted by CreateHostSecurityReport where analytics data will be grouped by organization and hostname.
  final Input<String>? envgroupHostname;

  /// Boolean expression that can be used to filter data. Filter expressions can be combined using AND/OR terms and should be fully parenthesized to avoid ambiguity. See Analytics metrics, dimensions, and filters reference https://docs.apigee.com/api-platform/analytics/analytics-reference for more information on the fields available to filter on. For more information on the tokens that you use to build filter expressions, see Filter expression syntax. https://docs.apigee.com/api-platform/analytics/asynch-reports-api#filter-expression-syntax
  final Input<String>? filter;

  /// Time unit used to group the result set. Valid values include: second, minute, hour, day, week, or month. If a query includes groupByTimeUnit, then the result is an aggregation based on the specified time unit and the resultant timestamp does not include milliseconds precision. If a query omits groupByTimeUnit, then the resultant timestamp includes milliseconds precision.
  final Input<String>? groupByTimeUnit;

  /// Maximum number of rows that can be returned in the result.
  final Input<int>? limit;

  /// A list of Metrics.
  final Input<List<GoogleCloudApigeeV1SecurityReportQueryMetric>>? metrics;

  /// Valid values include: `csv` or `json`. Defaults to `json`. Note: Configure the delimiter for CSV output using the csvDelimiter property.
  final Input<String>? mimeType;
  final Input<String> organizationId;

  /// Report Definition ID.
  final Input<String>? reportDefinitionId;

  /// Time range for the query. Can use the following predefined strings to specify the time range: `last60minutes` `last24hours` `last7days` Or, specify the timeRange as a structure describing start and end timestamps in the ISO format: yyyy-mm-ddThh:mm:ssZ. Example: "timeRange": { "start": "2018-07-29T00:13:00Z", "end": "2018-08-01T00:18:00Z" }
  final Input<dynamic> timeRange;

  HostSecurityReportArgs({
    this.csvDelimiter,
    this.dimensions,
    this.displayName,
    this.envgroupHostname,
    this.filter,
    this.groupByTimeUnit,
    this.limit,
    this.metrics,
    this.mimeType,
    required this.organizationId,
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
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
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
      map['metrics'] = Input.mapOptionalInputValue<
              List<GoogleCloudApigeeV1SecurityReportQueryMetric>,
              List<Map<String, dynamic>>>(
          metricsValue,
          (value) => Input.encodeList<
              GoogleCloudApigeeV1SecurityReportQueryMetric,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final mimeTypeValue = mimeType;
    if (mimeTypeValue != null) {
      map['mimeType'] = mimeTypeValue;
    }
    map['organizationId'] = organizationId;
    final reportDefinitionIdValue = reportDefinitionId;
    if (reportDefinitionIdValue != null) {
      map['reportDefinitionId'] = reportDefinitionIdValue;
    }
    map['timeRange'] = timeRange;
    return map;
  }

  factory HostSecurityReportArgs.fromMap(Map<String, dynamic> map) {
    return HostSecurityReportArgs(
      csvDelimiter: Input.asOptionalInput<String>(map['csvDelimiter']),
      dimensions: Input.asOptionalInput<List<String>>(map['dimensions']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      envgroupHostname: Input.asOptionalInput<String>(map['envgroupHostname']),
      filter: Input.asOptionalInput<String>(map['filter']),
      groupByTimeUnit: Input.asOptionalInput<String>(map['groupByTimeUnit']),
      limit: Input.asOptionalInput<int>(map['limit']),
      metrics: Input.asOptionalInput<
          List<GoogleCloudApigeeV1SecurityReportQueryMetric>>(map['metrics']),
      mimeType: Input.asOptionalInput<String>(map['mimeType']),
      organizationId: Input.asInput<String>(map['organizationId']),
      reportDefinitionId:
          Input.asOptionalInput<String>(map['reportDefinitionId']),
      timeRange: Input.asInput<dynamic>(map['timeRange']),
    );
  }
}
