// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'one_dashboard_page_widget_line_color.dart';
import 'one_dashboard_page_widget_line_data_format.dart';
import 'one_dashboard_page_widget_line_initial_sorting.dart';
import 'one_dashboard_page_widget_line_nrql_query.dart';
import 'one_dashboard_page_widget_line_null_value.dart';
import 'one_dashboard_page_widget_line_threshold.dart';
import 'one_dashboard_page_widget_line_tooltip.dart';
import 'one_dashboard_page_widget_line_unit.dart';
import 'one_dashboard_page_widget_line_yaxis_right.dart';

class OneDashboardPageWidgetLine {
  /// (Optional) A nested block that describes colors of your charts per series. See Nested Colors blocks below for details.
  final List<OneDashboardPageWidgetLineColor>? colors;
  /// (Required) Column position of widget from top left, starting at `1`.
  final int column;
  /// (Optional) A nested block that describes data format. See Nested data_format blocks below for details.
  final List<OneDashboardPageWidgetLineDataFormat>? dataFormats;
  /// (Optional) Enable or disable the Other group in visualisations. The other group is used if a facet on a query returns more than 2000 items for bar charts, pie charts, and tables. The other group aggregates the rest of the facets. Defaults to `false`
  final bool? facetShowOtherSeries;
  /// (Optional) Height of the widget.  Valid values are `1` to `12` inclusive.  Defaults to `3`.
  final int? height;
  /// The ID of the widget.
  final String? id;
  /// (Optional) An argument with a boolean value that is supported only by variables of `type` _nrql_ - when true, the time range specified in the query will override the time picker on dashboards and other pages.
  final bool? ignoreTimeRange;
  /// (Optional) An attribute that describes the sorting mechanism for the table. This attribute requires specifying the following attributes in a nested block -
  final OneDashboardPageWidgetLineInitialSorting? initialSorting;
  /// (Optional) A boolean value, which when true, sets the label to be visibly displayed within thresholds. In other words, if this attribute is set to true, the _label always visible_ toggle in the _Thresholds_ section in the settings of the widget is enabled.
  final bool? isLabelVisible;
  /// (Optional) With this turned on, the legend will be displayed. Defaults to `true`.
  final bool? legendEnabled;
  /// (Optional) Configuration for variables of type `nrql`. See Nested nrql\_query blocks for Variables for details.
  final List<OneDashboardPageWidgetLineNrqlQuery> nrqlQueries;
  /// (Optional) A nested block that describes a Null Values. See Nested Null Values blocks below for details.
  final List<OneDashboardPageWidgetLineNullValue>? nullValues;
  /// (Optional) This attribute determines the frequency for data refresh specified in milliseconds. Accepted values are `auto` for default value, `0` for no refresh, `5000` for 5 seconds, `30000` for 30 seconds, `60000` for 60 seconds, `300000` for 5 minutes, `1800000` for 30 minutes, `3600000` for 60 minute, `10800000` for 3 hours, `43200000` for 12 hours and `86400000` for 24 hours.
  final String? refreshRate;
  /// (Required) Row position of widget from top left, starting at `1`.
  final int row;
  /// (Optional) An attribute that helps specify multiple thresholds, each inclusive of a range of values between which the threshold would need to function, the name of the threshold and its severity. Multiple thresholds can be defined in a table widget. The `threshold` attribute requires specifying the following attributes in a nested block -
  final List<OneDashboardPageWidgetLineThreshold>? thresholds;
  /// (Optional) A human-friendly display string for this value.
  final String title;
  /// (Optional) A nested block that describes tooltip configuration for area, line, and stacked bar widgets. See Nested tooltip blocks below for details.
  final OneDashboardPageWidgetLineTooltip? tooltip;
  /// (Optional) A nested block that describes units on your Y axis. See Nested Units blocks below for details.
  final List<OneDashboardPageWidgetLineUnit>? units;
  /// (Optional) Width of the widget.  Valid values are `1` to `12` inclusive.  Defaults to `4`.
  final int? width;
  final double? yAxisLeftMax;
  /// , `y_axis_left_max` - (Optional) Adjust the Y axis to display the data within certain values by setting a minimum and maximum value for the axis for line charts and area charts. If no customization option is selected, dashboards automatically displays the full Y axis from 0 to the top value plus a margin.
  final double? yAxisLeftMin;
  /// (Optional) An attribute that specifies if the values on the graph to be rendered need to be fit to scale, or printed within the specified range from `y_axis_left_min` (or 0 if it is not defined) to `y_axis_left_max`. Use `y_axis_left_zero = true` with a combination of `y_axis_left_min` and `y_axis_left_max` to render values from 0 or the specified minimum to the maximum, and `y_axis_left_zero = false` to fit the graph to scale.
  final bool? yAxisLeftZero;
  /// (Optional) An attribute which helps specify the configuration of the Y-Axis displayed on the right side of the line widget. This is a nested block, which includes the following attributes:
  final OneDashboardPageWidgetLineYAxisRight? yAxisRight;

  /// Creates a new [OneDashboardPageWidgetLine].
  /// [colors] (Optional) A nested block that describes colors of your charts per series. See Nested Colors blocks below for details.
  /// [column] (Required) Column position of widget from top left, starting at `1`.
  /// [dataFormats] (Optional) A nested block that describes data format. See Nested data_format blocks below for details.
  /// [facetShowOtherSeries] (Optional) Enable or disable the Other group in visualisations. The other group is used if a facet on a query returns more than 2000 items for bar charts, pie charts, and tables. The other group aggregates the rest of the facets. Defaults to `false`
  /// [height] (Optional) Height of the widget.  Valid values are `1` to `12` inclusive.  Defaults to `3`.
  /// [id] The ID of the widget.
  /// [ignoreTimeRange] (Optional) An argument with a boolean value that is supported only by variables of `type` _nrql_ - when true, the time range specified in the query will override the time picker on dashboards and other pages.
  /// [initialSorting] (Optional) An attribute that describes the sorting mechanism for the table. This attribute requires specifying the following attributes in a nested block -
  /// [isLabelVisible] (Optional) A boolean value, which when true, sets the label to be visibly displayed within thresholds. In other words, if this attribute is set to true, the _label always visible_ toggle in the _Thresholds_ section in the settings of the widget is enabled.
  /// [legendEnabled] (Optional) With this turned on, the legend will be displayed. Defaults to `true`.
  /// [nrqlQueries] (Optional) Configuration for variables of type `nrql`. See Nested nrql\_query blocks for Variables for details.
  /// [nullValues] (Optional) A nested block that describes a Null Values. See Nested Null Values blocks below for details.
  /// [refreshRate] (Optional) This attribute determines the frequency for data refresh specified in milliseconds. Accepted values are `auto` for default value, `0` for no refresh, `5000` for 5 seconds, `30000` for 30 seconds, `60000` for 60 seconds, `300000` for 5 minutes, `1800000` for 30 minutes, `3600000` for 60 minute, `10800000` for 3 hours, `43200000` for 12 hours and `86400000` for 24 hours.
  /// [row] (Required) Row position of widget from top left, starting at `1`.
  /// [thresholds] (Optional) An attribute that helps specify multiple thresholds, each inclusive of a range of values between which the threshold would need to function, the name of the threshold and its severity. Multiple thresholds can be defined in a table widget. The `threshold` attribute requires specifying the following attributes in a nested block -
  /// [title] (Optional) A human-friendly display string for this value.
  /// [tooltip] (Optional) A nested block that describes tooltip configuration for area, line, and stacked bar widgets. See Nested tooltip blocks below for details.
  /// [units] (Optional) A nested block that describes units on your Y axis. See Nested Units blocks below for details.
  /// [width] (Optional) Width of the widget.  Valid values are `1` to `12` inclusive.  Defaults to `4`.
  /// [yAxisLeftMax] Optional.
  /// [yAxisLeftMin] , `y_axis_left_max` - (Optional) Adjust the Y axis to display the data within certain values by setting a minimum and maximum value for the axis for line charts and area charts. If no customization option is selected, dashboards automatically displays the full Y axis from 0 to the top value plus a margin.
  /// [yAxisLeftZero] (Optional) An attribute that specifies if the values on the graph to be rendered need to be fit to scale, or printed within the specified range from `y_axis_left_min` (or 0 if it is not defined) to `y_axis_left_max`. Use `y_axis_left_zero = true` with a combination of `y_axis_left_min` and `y_axis_left_max` to render values from 0 or the specified minimum to the maximum, and `y_axis_left_zero = false` to fit the graph to scale.
  /// [yAxisRight] (Optional) An attribute which helps specify the configuration of the Y-Axis displayed on the right side of the line widget. This is a nested block, which includes the following attributes:
  OneDashboardPageWidgetLine({
    this.colors,
    required this.column,
    this.dataFormats,
    this.facetShowOtherSeries,
    this.height,
    this.id,
    this.ignoreTimeRange,
    this.initialSorting,
    this.isLabelVisible,
    this.legendEnabled,
    required this.nrqlQueries,
    this.nullValues,
    this.refreshRate,
    required this.row,
    this.thresholds,
    required this.title,
    this.tooltip,
    this.units,
    this.width,
    this.yAxisLeftMax,
    this.yAxisLeftMin,
    this.yAxisLeftZero,
    this.yAxisRight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'colors': ?colors == null ? null : pulumi.Input.encodeList<OneDashboardPageWidgetLineColor, Map<String, dynamic>>(colors!, (value) => value.toMap()),
      'column': column,
      'dataFormats': ?dataFormats == null ? null : pulumi.Input.encodeList<OneDashboardPageWidgetLineDataFormat, Map<String, dynamic>>(dataFormats!, (value) => value.toMap()),
      'facetShowOtherSeries': ?facetShowOtherSeries,
      'height': ?height,
      'id': ?id,
      'ignoreTimeRange': ?ignoreTimeRange,
      'initialSorting': ?initialSorting == null ? null : initialSorting!.toMap(),
      'isLabelVisible': ?isLabelVisible,
      'legendEnabled': ?legendEnabled,
      'nrqlQueries': pulumi.Input.encodeList<OneDashboardPageWidgetLineNrqlQuery, Map<String, dynamic>>(nrqlQueries, (value) => value.toMap()),
      'nullValues': ?nullValues == null ? null : pulumi.Input.encodeList<OneDashboardPageWidgetLineNullValue, Map<String, dynamic>>(nullValues!, (value) => value.toMap()),
      'refreshRate': ?refreshRate,
      'row': row,
      'thresholds': ?thresholds == null ? null : pulumi.Input.encodeList<OneDashboardPageWidgetLineThreshold, Map<String, dynamic>>(thresholds!, (value) => value.toMap()),
      'title': title,
      'tooltip': ?tooltip == null ? null : tooltip!.toMap(),
      'units': ?units == null ? null : pulumi.Input.encodeList<OneDashboardPageWidgetLineUnit, Map<String, dynamic>>(units!, (value) => value.toMap()),
      'width': ?width,
      'yAxisLeftMax': ?yAxisLeftMax,
      'yAxisLeftMin': ?yAxisLeftMin,
      'yAxisLeftZero': ?yAxisLeftZero,
      'yAxisRight': ?yAxisRight == null ? null : yAxisRight!.toMap(),
    };
  }

  factory OneDashboardPageWidgetLine.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetLine(
      colors: map['colors'] == null ? null : pulumi.Input.decodeList<OneDashboardPageWidgetLineColor>(map['colors'], (value) => OneDashboardPageWidgetLineColor.fromMap((value as Map).cast<String, dynamic>())),
      column: map['column'] as int,
      dataFormats: map['dataFormats'] == null ? null : pulumi.Input.decodeList<OneDashboardPageWidgetLineDataFormat>(map['dataFormats'], (value) => OneDashboardPageWidgetLineDataFormat.fromMap((value as Map).cast<String, dynamic>())),
      facetShowOtherSeries: map['facetShowOtherSeries'] == null ? null : map['facetShowOtherSeries'] as bool,
      height: map['height'] == null ? null : map['height'] as int,
      id: map['id'] == null ? null : map['id'] as String,
      ignoreTimeRange: map['ignoreTimeRange'] == null ? null : map['ignoreTimeRange'] as bool,
      initialSorting: map['initialSorting'] == null ? null : OneDashboardPageWidgetLineInitialSorting.fromMap((map['initialSorting'] as Map).cast<String, dynamic>()),
      isLabelVisible: map['isLabelVisible'] == null ? null : map['isLabelVisible'] as bool,
      legendEnabled: map['legendEnabled'] == null ? null : map['legendEnabled'] as bool,
      nrqlQueries: pulumi.Input.decodeList<OneDashboardPageWidgetLineNrqlQuery>(map['nrqlQueries'], (value) => OneDashboardPageWidgetLineNrqlQuery.fromMap((value as Map).cast<String, dynamic>())),
      nullValues: map['nullValues'] == null ? null : pulumi.Input.decodeList<OneDashboardPageWidgetLineNullValue>(map['nullValues'], (value) => OneDashboardPageWidgetLineNullValue.fromMap((value as Map).cast<String, dynamic>())),
      refreshRate: map['refreshRate'] == null ? null : map['refreshRate'] as String,
      row: map['row'] as int,
      thresholds: map['thresholds'] == null ? null : pulumi.Input.decodeList<OneDashboardPageWidgetLineThreshold>(map['thresholds'], (value) => OneDashboardPageWidgetLineThreshold.fromMap((value as Map).cast<String, dynamic>())),
      title: map['title'] as String,
      tooltip: map['tooltip'] == null ? null : OneDashboardPageWidgetLineTooltip.fromMap((map['tooltip'] as Map).cast<String, dynamic>()),
      units: map['units'] == null ? null : pulumi.Input.decodeList<OneDashboardPageWidgetLineUnit>(map['units'], (value) => OneDashboardPageWidgetLineUnit.fromMap((value as Map).cast<String, dynamic>())),
      width: map['width'] == null ? null : map['width'] as int,
      yAxisLeftMax: map['yAxisLeftMax'] == null ? null : map['yAxisLeftMax'] as double,
      yAxisLeftMin: map['yAxisLeftMin'] == null ? null : map['yAxisLeftMin'] as double,
      yAxisLeftZero: map['yAxisLeftZero'] == null ? null : map['yAxisLeftZero'] as bool,
      yAxisRight: map['yAxisRight'] == null ? null : OneDashboardPageWidgetLineYAxisRight.fromMap((map['yAxisRight'] as Map).cast<String, dynamic>()),
    );
  }
}

