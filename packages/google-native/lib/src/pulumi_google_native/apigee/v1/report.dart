import 'package:pulumi/pulumi.dart';
import 'google_cloud_apigee_v1_custom_report_metric_response.dart';
import 'google_cloud_apigee_v1_report_property_response.dart';
import 'report_args.dart';

/// Creates a Custom Report for an Organization. A Custom Report provides Apigee Customers to create custom dashboards in addition to the standard dashboards which are provided. The Custom Report in its simplest form contains specifications about metrics, dimensions and filters. It is important to note that the custom report by itself does not provide an executable entity. The Edge UI converts the custom report definition into an analytics query and displays the result in a chart.
class Report extends CustomResource {
  /// This field contains the chart type for the report
  late final Output<String> chartType;

  /// Legacy field: not used. This field contains a list of comments associated with custom report
  late final Output<List<String>> comments;

  /// Unix time when the app was created json key: createdAt
  late final Output<String> createdAt;

  /// This contains the list of dimensions for the report
  late final Output<List<String>> dimensions;

  /// This is the display name for the report
  late final Output<String> displayName;

  /// Environment name
  late final Output<String> environment;

  /// This field contains the filter expression
  late final Output<String> filter;

  /// Legacy field: not used. Contains the from time for the report
  late final Output<String> fromTime;

  /// Modified time of this entity as milliseconds since epoch. json key: lastModifiedAt
  late final Output<String> lastModifiedAt;

  /// Last viewed time of this entity as milliseconds since epoch
  late final Output<String> lastViewedAt;

  /// Legacy field: not used This field contains the limit for the result retrieved
  late final Output<String> limit;

  /// This contains the list of metrics
  late final Output<List<GoogleCloudApigeeV1CustomReportMetricResponse>>
      metrics;

  /// Unique identifier for the report T his is a legacy field used to encode custom report unique id
  late final Output<String> name;

  /// Legacy field: not used. This field contains the offset for the data
  late final Output<String> offset;

  /// Organization name
  late final Output<String> organization;
  late final Output<String> organizationId;

  /// This field contains report properties such as ui metadata etc.
  late final Output<List<GoogleCloudApigeeV1ReportPropertyResponse>> properties;

  /// Legacy field: not used much. Contains the list of sort by columns
  late final Output<List<String>> sortByCols;

  /// Legacy field: not used much. Contains the sort order for the sort columns
  late final Output<String> sortOrder;

  /// Legacy field: not used. This field contains a list of tags associated with custom report
  late final Output<List<String>> tags;

  /// This field contains the time unit of aggregation for the report
  late final Output<String> timeUnit;

  /// Legacy field: not used. Contains the end time for the report
  late final Output<String> toTime;

  /// Legacy field: not used. This field contains the top k parameter value for restricting the result
  late final Output<String> topk;

  Report(
    String name, {
    ReportArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:Report',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.chartType = Output.createUnknown<String>();
    this.comments = Output.createUnknown<List<String>>();
    this.createdAt = Output.createUnknown<String>();
    this.dimensions = Output.createUnknown<List<String>>();
    this.displayName = Output.createUnknown<String>();
    this.environment = Output.createUnknown<String>();
    this.filter = Output.createUnknown<String>();
    this.fromTime = Output.createUnknown<String>();
    this.lastModifiedAt = Output.createUnknown<String>();
    this.lastViewedAt = Output.createUnknown<String>();
    this.limit = Output.createUnknown<String>();
    this.metrics = Output.createUnknown<
        List<GoogleCloudApigeeV1CustomReportMetricResponse>>();
    this.name = Output.createUnknown<String>();
    this.offset = Output.createUnknown<String>();
    this.organization = Output.createUnknown<String>();
    this.organizationId = Output.createUnknown<String>();
    this.properties =
        Output.createUnknown<List<GoogleCloudApigeeV1ReportPropertyResponse>>();
    this.sortByCols = Output.createUnknown<List<String>>();
    this.sortOrder = Output.createUnknown<String>();
    this.tags = Output.createUnknown<List<String>>();
    this.timeUnit = Output.createUnknown<String>();
    this.toTime = Output.createUnknown<String>();
    this.topk = Output.createUnknown<String>();
  }
}
