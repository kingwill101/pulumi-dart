// ignore_for_file: unused_element, unnecessary_cast

import 'alert_chart.dart';
import 'collapsible_group.dart';
import 'error_reporting_panel.dart';
import 'incident_list.dart';
import 'logs_panel.dart';
import 'pie_chart.dart';
import 'scorecard.dart';
import 'text.dart';
import 'time_series_table.dart';
import 'xy_chart.dart';

/// Widget contains a single dashboard component and configuration of how to present the component in the dashboard.
class Widget {
  /// A chart of alert policy data.
  final AlertChart? alertChart;

  /// A blank space.
  final Map<String, dynamic>? blank;

  /// A widget that groups the other widgets. All widgets that are within the area spanned by the grouping widget are considered member widgets.
  final CollapsibleGroup? collapsibleGroup;

  /// A widget that displays a list of error groups.
  final ErrorReportingPanel? errorReportingPanel;

  /// Optional. The widget id. Ids may be made up of alphanumerics, dashes and underscores. Widget ids are optional.
  final String? id;

  /// A widget that shows list of incidents.
  final IncidentList? incidentList;

  /// A widget that shows a stream of logs.
  final LogsPanel? logsPanel;

  /// A widget that displays timeseries data as a pie chart.
  final PieChart? pieChart;

  /// A scorecard summarizing time series data.
  final Scorecard? scorecard;

  /// A raw string or markdown displaying textual content.
  final Text? text;

  /// A widget that displays time series data in a tabular format.
  final TimeSeriesTable? timeSeriesTable;

  /// Optional. The title of the widget.
  final String? title;

  /// A chart of time series data.
  final XyChart? xyChart;

  /// Creates a new [Widget].
  /// [alertChart] A chart of alert policy data.
  /// [blank] A blank space.
  /// [collapsibleGroup] A widget that groups the other widgets. All widgets that are within the area spanned by the grouping widget are considered member widgets.
  /// [errorReportingPanel] A widget that displays a list of error groups.
  /// [id] Optional. The widget id. Ids may be made up of alphanumerics, dashes and underscores. Widget ids are optional.
  /// [incidentList] A widget that shows list of incidents.
  /// [logsPanel] A widget that shows a stream of logs.
  /// [pieChart] A widget that displays timeseries data as a pie chart.
  /// [scorecard] A scorecard summarizing time series data.
  /// [text] A raw string or markdown displaying textual content.
  /// [timeSeriesTable] A widget that displays time series data in a tabular format.
  /// [title] Optional. The title of the widget.
  /// [xyChart] A chart of time series data.
  Widget({
    this.alertChart,
    this.blank,
    this.collapsibleGroup,
    this.errorReportingPanel,
    this.id,
    this.incidentList,
    this.logsPanel,
    this.pieChart,
    this.scorecard,
    this.text,
    this.timeSeriesTable,
    this.title,
    this.xyChart,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertChart': ?alertChart == null ? null : alertChart!.toMap(),
      'blank': ?blank,
      'collapsibleGroup': ?collapsibleGroup == null
          ? null
          : collapsibleGroup!.toMap(),
      'errorReportingPanel': ?errorReportingPanel == null
          ? null
          : errorReportingPanel!.toMap(),
      'id': ?id,
      'incidentList': ?incidentList == null ? null : incidentList!.toMap(),
      'logsPanel': ?logsPanel == null ? null : logsPanel!.toMap(),
      'pieChart': ?pieChart == null ? null : pieChart!.toMap(),
      'scorecard': ?scorecard == null ? null : scorecard!.toMap(),
      'text': ?text == null ? null : text!.toMap(),
      'timeSeriesTable': ?timeSeriesTable == null
          ? null
          : timeSeriesTable!.toMap(),
      'title': ?title,
      'xyChart': ?xyChart == null ? null : xyChart!.toMap(),
    };
  }

  factory Widget.fromMap(Map<String, dynamic> map) {
    return Widget(
      alertChart: map['alertChart'] == null
          ? null
          : AlertChart.fromMap(
              (map['alertChart'] as Map).cast<String, dynamic>(),
            ),
      blank: map['blank'] == null
          ? null
          : (map['blank'] as Map).cast<String, dynamic>(),
      collapsibleGroup: map['collapsibleGroup'] == null
          ? null
          : CollapsibleGroup.fromMap(
              (map['collapsibleGroup'] as Map).cast<String, dynamic>(),
            ),
      errorReportingPanel: map['errorReportingPanel'] == null
          ? null
          : ErrorReportingPanel.fromMap(
              (map['errorReportingPanel'] as Map).cast<String, dynamic>(),
            ),
      id: map['id'] == null ? null : map['id'] as String,
      incidentList: map['incidentList'] == null
          ? null
          : IncidentList.fromMap(
              (map['incidentList'] as Map).cast<String, dynamic>(),
            ),
      logsPanel: map['logsPanel'] == null
          ? null
          : LogsPanel.fromMap(
              (map['logsPanel'] as Map).cast<String, dynamic>(),
            ),
      pieChart: map['pieChart'] == null
          ? null
          : PieChart.fromMap((map['pieChart'] as Map).cast<String, dynamic>()),
      scorecard: map['scorecard'] == null
          ? null
          : Scorecard.fromMap(
              (map['scorecard'] as Map).cast<String, dynamic>(),
            ),
      text: map['text'] == null
          ? null
          : Text.fromMap((map['text'] as Map).cast<String, dynamic>()),
      timeSeriesTable: map['timeSeriesTable'] == null
          ? null
          : TimeSeriesTable.fromMap(
              (map['timeSeriesTable'] as Map).cast<String, dynamic>(),
            ),
      title: map['title'] == null ? null : map['title'] as String,
      xyChart: map['xyChart'] == null
          ? null
          : XyChart.fromMap((map['xyChart'] as Map).cast<String, dynamic>()),
    );
  }
}
