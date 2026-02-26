// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'column_layout.dart';
import 'dashboard_filter.dart';
import 'grid_layout.dart';
import 'mosaic_layout.dart';
import 'row_layout.dart';

/// The set of arguments for Dashboard.
class DashboardArgs {
  /// The content is divided into equally spaced columns and the widgets are arranged vertically.
  final Input<ColumnLayout>? columnLayout;

  /// Filters to reduce the amount of data charted based on the filter criteria.
  final Input<List<DashboardFilter>>? dashboardFilters;

  /// The mutable, human-readable name.
  final Input<String> displayName;

  /// etag is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. An etag is returned in the response to GetDashboard, and users are expected to put that etag in the request to UpdateDashboard to ensure that their change will be applied to the same version of the Dashboard configuration. The field should not be passed during dashboard creation.
  final Input<String>? etag;

  /// Content is arranged with a basic layout that re-flows a simple list of informational elements like widgets or tiles.
  final Input<GridLayout>? gridLayout;

  /// Labels applied to the dashboard
  final Input<Map<String, String>>? labels;

  /// The content is arranged as a grid of tiles, with each content widget occupying one or more grid blocks.
  final Input<MosaicLayout>? mosaicLayout;

  /// Immutable. The resource name of the dashboard.
  final Input<String>? name;
  final Input<String>? project;

  /// The content is divided into equally spaced rows and the widgets are arranged horizontally.
  final Input<RowLayout>? rowLayout;

  DashboardArgs({
    this.columnLayout,
    this.dashboardFilters,
    required this.displayName,
    this.etag,
    this.gridLayout,
    this.labels,
    this.mosaicLayout,
    this.name,
    this.project,
    this.rowLayout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final columnLayoutValue = columnLayout;
    if (columnLayoutValue != null) {
      map['columnLayout'] =
          Input.mapOptionalInputValue<ColumnLayout, Map<String, dynamic>>(
              columnLayoutValue, (value) => value.toMap());
    }
    final dashboardFiltersValue = dashboardFilters;
    if (dashboardFiltersValue != null) {
      map['dashboardFilters'] = Input.mapOptionalInputValue<
              List<DashboardFilter>, List<Map<String, dynamic>>>(
          dashboardFiltersValue,
          (value) => Input.encodeList<DashboardFilter, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    map['displayName'] = displayName;
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final gridLayoutValue = gridLayout;
    if (gridLayoutValue != null) {
      map['gridLayout'] =
          Input.mapOptionalInputValue<GridLayout, Map<String, dynamic>>(
              gridLayoutValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final mosaicLayoutValue = mosaicLayout;
    if (mosaicLayoutValue != null) {
      map['mosaicLayout'] =
          Input.mapOptionalInputValue<MosaicLayout, Map<String, dynamic>>(
              mosaicLayoutValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final rowLayoutValue = rowLayout;
    if (rowLayoutValue != null) {
      map['rowLayout'] =
          Input.mapOptionalInputValue<RowLayout, Map<String, dynamic>>(
              rowLayoutValue, (value) => value.toMap());
    }
    return map;
  }

  factory DashboardArgs.fromMap(Map<String, dynamic> map) {
    return DashboardArgs(
      columnLayout: Input.asOptionalInput<ColumnLayout>(map['columnLayout']),
      dashboardFilters:
          Input.asOptionalInput<List<DashboardFilter>>(map['dashboardFilters']),
      displayName: Input.asInput<String>(map['displayName']),
      etag: Input.asOptionalInput<String>(map['etag']),
      gridLayout: Input.asOptionalInput<GridLayout>(map['gridLayout']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      mosaicLayout: Input.asOptionalInput<MosaicLayout>(map['mosaicLayout']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      rowLayout: Input.asOptionalInput<RowLayout>(map['rowLayout']),
    );
  }
}
