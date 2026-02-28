// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_custom_report_metric.dart';
import 'google_cloud_apigee_v1_report_property.dart';

/// {@template pulumi_apigee_v1_report_args_doc}
/// The set of arguments for Report.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_report_args_doc}
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

  /// Creates a new [ReportArgs].
  /// [chartType] This field contains the chart type for the report
  /// [comments] Legacy field: not used. This field contains a list of comments associated with custom report
  /// [dimensions] This contains the list of dimensions for the report
  /// [displayName] This is the display name for the report
  /// [filter] This field contains the filter expression
  /// [fromTime] Legacy field: not used. Contains the from time for the report
  /// [limit] Legacy field: not used This field contains the limit for the result retrieved
  /// [metrics] This contains the list of metrics
  /// [name] Unique identifier for the report T his is a legacy field used to encode custom report unique id
  /// [offset] Legacy field: not used. This field contains the offset for the data
  /// [organizationId] Required.
  /// [properties] This field contains report properties such as ui metadata etc.
  /// [sortByCols] Legacy field: not used much. Contains the list of sort by columns
  /// [sortOrder] Legacy field: not used much. Contains the sort order for the sort columns
  /// [tags] Legacy field: not used. This field contains a list of tags associated with custom report
  /// [timeUnit] This field contains the time unit of aggregation for the report
  /// [toTime] Legacy field: not used. Contains the end time for the report
  /// [topk] Legacy field: not used. This field contains the top k parameter value for restricting the result
  ReportArgs({
    String? chartType,
    List<String>? comments,
    List<String>? dimensions,
    String? displayName,
    String? filter,
    String? fromTime,
    String? limit,
    required List<GoogleCloudApigeeV1CustomReportMetric> metrics,
    String? name,
    String? offset,
    required String organizationId,
    List<GoogleCloudApigeeV1ReportProperty>? properties,
    List<String>? sortByCols,
    String? sortOrder,
    List<String>? tags,
    String? timeUnit,
    String? toTime,
    String? topk,
  })  : chartType = pulumi.Input.asOptionalInput<String>(chartType),
        comments = pulumi.Input.asOptionalInput<List<String>>(comments),
        dimensions = pulumi.Input.asOptionalInput<List<String>>(dimensions),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        filter = pulumi.Input.asOptionalInput<String>(filter),
        fromTime = pulumi.Input.asOptionalInput<String>(fromTime),
        limit = pulumi.Input.asOptionalInput<String>(limit),
        metrics =
            pulumi.Input.asInput<List<GoogleCloudApigeeV1CustomReportMetric>>(
                metrics),
        name = pulumi.Input.asOptionalInput<String>(name),
        offset = pulumi.Input.asOptionalInput<String>(offset),
        organizationId = pulumi.Input.asInput<String>(organizationId),
        properties = pulumi.Input.asOptionalInput<
            List<GoogleCloudApigeeV1ReportProperty>>(properties),
        sortByCols = pulumi.Input.asOptionalInput<List<String>>(sortByCols),
        sortOrder = pulumi.Input.asOptionalInput<String>(sortOrder),
        tags = pulumi.Input.asOptionalInput<List<String>>(tags),
        timeUnit = pulumi.Input.asOptionalInput<String>(timeUnit),
        toTime = pulumi.Input.asOptionalInput<String>(toTime),
        topk = pulumi.Input.asOptionalInput<String>(topk);

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
      chartType: map['chartType'] == null ? null : map['chartType'] as String,
      comments: map['comments'] == null
          ? null
          : (map['comments'] as List).cast<String>(),
      dimensions: map['dimensions'] == null
          ? null
          : (map['dimensions'] as List).cast<String>(),
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      filter: map['filter'] == null ? null : map['filter'] as String,
      fromTime: map['fromTime'] == null ? null : map['fromTime'] as String,
      limit: map['limit'] == null ? null : map['limit'] as String,
      metrics: pulumi.Input.decodeList<GoogleCloudApigeeV1CustomReportMetric>(
          map['metrics'],
          (value) => GoogleCloudApigeeV1CustomReportMetric.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      offset: map['offset'] == null ? null : map['offset'] as String,
      organizationId: map['organizationId'] as String,
      properties: map['properties'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudApigeeV1ReportProperty>(
              map['properties'],
              (value) => GoogleCloudApigeeV1ReportProperty.fromMap(
                  (value as Map).cast<String, dynamic>())),
      sortByCols: map['sortByCols'] == null
          ? null
          : (map['sortByCols'] as List).cast<String>(),
      sortOrder: map['sortOrder'] == null ? null : map['sortOrder'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      timeUnit: map['timeUnit'] == null ? null : map['timeUnit'] as String,
      toTime: map['toTime'] == null ? null : map['toTime'] as String,
      topk: map['topk'] == null ? null : map['topk'] as String,
    );
  }
}
