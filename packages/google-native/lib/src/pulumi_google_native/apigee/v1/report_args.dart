// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_custom_report_metric.dart';
import 'google_cloud_apigee_v1_report_property.dart';

/// The set of arguments for Report.
class ReportArgs {
  /// This field contains the chart type for the report
  final pulumi.Input<String>? chartType;

  /// Legacy field: not used. This field contains a list of comments associated with custom report
  final pulumi.Input<List<String>>? comments;

  /// This contains the list of dimensions for the report
  final pulumi.Input<List<String>>? dimensions;

  /// This is the display name for the report
  final pulumi.Input<String>? displayName;

  /// This field contains the filter expression
  final pulumi.Input<String>? filter;

  /// Legacy field: not used. Contains the from time for the report
  final pulumi.Input<String>? fromTime;

  /// Legacy field: not used This field contains the limit for the result retrieved
  final pulumi.Input<String>? limit;

  /// This contains the list of metrics
  final pulumi.Input<List<GoogleCloudApigeeV1CustomReportMetric>> metrics;

  /// Unique identifier for the report T his is a legacy field used to encode custom report unique id
  final pulumi.Input<String>? name;

  /// Legacy field: not used. This field contains the offset for the data
  final pulumi.Input<String>? offset;
  final pulumi.Input<String> organizationId;

  /// This field contains report properties such as ui metadata etc.
  final pulumi.Input<List<GoogleCloudApigeeV1ReportProperty>>? properties;

  /// Legacy field: not used much. Contains the list of sort by columns
  final pulumi.Input<List<String>>? sortByCols;

  /// Legacy field: not used much. Contains the sort order for the sort columns
  final pulumi.Input<String>? sortOrder;

  /// Legacy field: not used. This field contains a list of tags associated with custom report
  final pulumi.Input<List<String>>? tags;

  /// This field contains the time unit of aggregation for the report
  final pulumi.Input<String>? timeUnit;

  /// Legacy field: not used. Contains the end time for the report
  final pulumi.Input<String>? toTime;

  /// Legacy field: not used. This field contains the top k parameter value for restricting the result
  final pulumi.Input<String>? topk;

  ReportArgs({
    this.chartType,
    this.comments,
    this.dimensions,
    this.displayName,
    this.filter,
    this.fromTime,
    this.limit,
    required this.metrics,
    this.name,
    this.offset,
    required this.organizationId,
    this.properties,
    this.sortByCols,
    this.sortOrder,
    this.tags,
    this.timeUnit,
    this.toTime,
    this.topk,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final chartTypeValue = chartType;
    if (chartTypeValue != null) {
      map['chartType'] = chartTypeValue;
    }
    final commentsValue = comments;
    if (commentsValue != null) {
      map['comments'] = commentsValue;
    }
    final dimensionsValue = dimensions;
    if (dimensionsValue != null) {
      map['dimensions'] = dimensionsValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    final fromTimeValue = fromTime;
    if (fromTimeValue != null) {
      map['fromTime'] = fromTimeValue;
    }
    final limitValue = limit;
    if (limitValue != null) {
      map['limit'] = limitValue;
    }
    map['metrics'] = pulumi.Input.mapInputValue<
            List<GoogleCloudApigeeV1CustomReportMetric>,
            List<Map<String, dynamic>>>(
        metrics,
        (value) => pulumi.Input.encodeList<
            GoogleCloudApigeeV1CustomReportMetric,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final offsetValue = offset;
    if (offsetValue != null) {
      map['offset'] = offsetValue;
    }
    map['organizationId'] = organizationId;
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudApigeeV1ReportProperty>,
              List<Map<String, dynamic>>>(
          propertiesValue,
          (value) => pulumi.Input.encodeList<GoogleCloudApigeeV1ReportProperty,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final sortByColsValue = sortByCols;
    if (sortByColsValue != null) {
      map['sortByCols'] = sortByColsValue;
    }
    final sortOrderValue = sortOrder;
    if (sortOrderValue != null) {
      map['sortOrder'] = sortOrderValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeUnitValue = timeUnit;
    if (timeUnitValue != null) {
      map['timeUnit'] = timeUnitValue;
    }
    final toTimeValue = toTime;
    if (toTimeValue != null) {
      map['toTime'] = toTimeValue;
    }
    final topkValue = topk;
    if (topkValue != null) {
      map['topk'] = topkValue;
    }
    return map;
  }

  factory ReportArgs.fromMap(Map<String, dynamic> map) {
    return ReportArgs(
      chartType: pulumi.Input.asOptionalInput<String>(map['chartType']),
      comments: pulumi.Input.asOptionalInput<List<String>>(map['comments']),
      dimensions: pulumi.Input.asOptionalInput<List<String>>(map['dimensions']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      filter: pulumi.Input.asOptionalInput<String>(map['filter']),
      fromTime: pulumi.Input.asOptionalInput<String>(map['fromTime']),
      limit: pulumi.Input.asOptionalInput<String>(map['limit']),
      metrics:
          pulumi.Input.asInput<List<GoogleCloudApigeeV1CustomReportMetric>>(
              map['metrics']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      offset: pulumi.Input.asOptionalInput<String>(map['offset']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      properties:
          pulumi.Input.asOptionalInput<List<GoogleCloudApigeeV1ReportProperty>>(
              map['properties']),
      sortByCols: pulumi.Input.asOptionalInput<List<String>>(map['sortByCols']),
      sortOrder: pulumi.Input.asOptionalInput<String>(map['sortOrder']),
      tags: pulumi.Input.asOptionalInput<List<String>>(map['tags']),
      timeUnit: pulumi.Input.asOptionalInput<String>(map['timeUnit']),
      toTime: pulumi.Input.asOptionalInput<String>(map['toTime']),
      topk: pulumi.Input.asOptionalInput<String>(map['topk']),
    );
  }
}
