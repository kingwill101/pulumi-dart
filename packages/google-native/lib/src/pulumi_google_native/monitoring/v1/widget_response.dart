// ignore_for_file: unused_element, unnecessary_cast

import 'alert_chart_response.dart';
import 'collapsible_group_response.dart';
import 'error_reporting_panel_response.dart';
import 'incident_list_response.dart';
import 'logs_panel_response.dart';
import 'pie_chart_response.dart';
import 'scorecard_response.dart';
import 'text_response.dart';
import 'time_series_table_response.dart';
import 'xy_chart_response.dart';

/// Widget contains a single dashboard component and configuration of how to present the component in the dashboard.
class WidgetResponse {
  /// A chart of alert policy data.
  final AlertChartResponse alertChart;

  /// A blank space.
  final Map<String, dynamic> blank;

  /// A widget that groups the other widgets. All widgets that are within the area spanned by the grouping widget are considered member widgets.
  final CollapsibleGroupResponse collapsibleGroup;

  /// A widget that displays a list of error groups.
  final ErrorReportingPanelResponse errorReportingPanel;

  /// A widget that shows list of incidents.
  final IncidentListResponse incidentList;

  /// A widget that shows a stream of logs.
  final LogsPanelResponse logsPanel;

  /// A widget that displays timeseries data as a pie chart.
  final PieChartResponse pieChart;

  /// A scorecard summarizing time series data.
  final ScorecardResponse scorecard;

  /// A raw string or markdown displaying textual content.
  final TextResponse text;

  /// A widget that displays time series data in a tabular format.
  final TimeSeriesTableResponse timeSeriesTable;

  /// Optional. The title of the widget.
  final String title;

  /// A chart of time series data.
  final XyChartResponse xyChart;

  WidgetResponse({
    required this.alertChart,
    required this.blank,
    required this.collapsibleGroup,
    required this.errorReportingPanel,
    required this.incidentList,
    required this.logsPanel,
    required this.pieChart,
    required this.scorecard,
    required this.text,
    required this.timeSeriesTable,
    required this.title,
    required this.xyChart,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['alertChart'] = alertChart.toMap();
    map['blank'] = blank;
    map['collapsibleGroup'] = collapsibleGroup.toMap();
    map['errorReportingPanel'] = errorReportingPanel.toMap();
    map['incidentList'] = incidentList.toMap();
    map['logsPanel'] = logsPanel.toMap();
    map['pieChart'] = pieChart.toMap();
    map['scorecard'] = scorecard.toMap();
    map['text'] = text.toMap();
    map['timeSeriesTable'] = timeSeriesTable.toMap();
    map['title'] = title;
    map['xyChart'] = xyChart.toMap();
    return map;
  }

  factory WidgetResponse.fromMap(Map<String, dynamic> map) {
    return WidgetResponse(
      alertChart: AlertChartResponse.fromMap(
          (map['alertChart'] as Map).cast<String, dynamic>()),
      blank: (map['blank'] as Map).cast<String, dynamic>(),
      collapsibleGroup: CollapsibleGroupResponse.fromMap(
          (map['collapsibleGroup'] as Map).cast<String, dynamic>()),
      errorReportingPanel: ErrorReportingPanelResponse.fromMap(
          (map['errorReportingPanel'] as Map).cast<String, dynamic>()),
      incidentList: IncidentListResponse.fromMap(
          (map['incidentList'] as Map).cast<String, dynamic>()),
      logsPanel: LogsPanelResponse.fromMap(
          (map['logsPanel'] as Map).cast<String, dynamic>()),
      pieChart: PieChartResponse.fromMap(
          (map['pieChart'] as Map).cast<String, dynamic>()),
      scorecard: ScorecardResponse.fromMap(
          (map['scorecard'] as Map).cast<String, dynamic>()),
      text: TextResponse.fromMap((map['text'] as Map).cast<String, dynamic>()),
      timeSeriesTable: TimeSeriesTableResponse.fromMap(
          (map['timeSeriesTable'] as Map).cast<String, dynamic>()),
      title: map['title'] as String,
      xyChart: XyChartResponse.fromMap(
          (map['xyChart'] as Map).cast<String, dynamic>()),
    );
  }
}
