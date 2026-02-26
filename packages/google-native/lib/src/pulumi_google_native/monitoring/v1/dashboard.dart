import 'package:pulumi/pulumi.dart';
import 'column_layout_response.dart';
import 'dashboard_args.dart';
import 'dashboard_filter_response.dart';
import 'grid_layout_response.dart';
import 'mosaic_layout_response.dart';
import 'row_layout_response.dart';

/// Creates a new custom dashboard. For examples on how you can use this API to create dashboards, see Managing dashboards by API (https://cloud.google.com/monitoring/dashboards/api-dashboard). This method requires the monitoring.dashboards.create permission on the specified project. For more information about permissions, see Cloud Identity and Access Management (https://cloud.google.com/iam).
class Dashboard extends CustomResource {
  /// The content is divided into equally spaced columns and the widgets are arranged vertically.
  late final Output<ColumnLayoutResponse> columnLayout;

  /// Filters to reduce the amount of data charted based on the filter criteria.
  late final Output<List<DashboardFilterResponse>> dashboardFilters;

  /// The mutable, human-readable name.
  late final Output<String> displayName;

  /// etag is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. An etag is returned in the response to GetDashboard, and users are expected to put that etag in the request to UpdateDashboard to ensure that their change will be applied to the same version of the Dashboard configuration. The field should not be passed during dashboard creation.
  late final Output<String> etag;

  /// Content is arranged with a basic layout that re-flows a simple list of informational elements like widgets or tiles.
  late final Output<GridLayoutResponse> gridLayout;

  /// Labels applied to the dashboard
  late final Output<Map<String, String>> labels;

  /// The content is arranged as a grid of tiles, with each content widget occupying one or more grid blocks.
  late final Output<MosaicLayoutResponse> mosaicLayout;

  /// Immutable. The resource name of the dashboard.
  late final Output<String> name;
  late final Output<String> project;

  /// The content is divided into equally spaced rows and the widgets are arranged horizontally.
  late final Output<RowLayoutResponse> rowLayout;

  Dashboard(
    String name, {
    DashboardArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:monitoring/v1:Dashboard',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.columnLayout = Output.createUnknown<ColumnLayoutResponse>();
    this.dashboardFilters =
        Output.createUnknown<List<DashboardFilterResponse>>();
    this.displayName = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.gridLayout = Output.createUnknown<GridLayoutResponse>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.mosaicLayout = Output.createUnknown<MosaicLayoutResponse>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.rowLayout = Output.createUnknown<RowLayoutResponse>();
  }
}
