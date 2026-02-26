// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'column_settings.dart';
import 'table_data_set.dart';
import 'time_series_table_metric_visualization.dart';

/// A table that displays time series data.
class TimeSeriesTable {
  /// Optional. The list of the persistent column settings for the table.
  final List<ColumnSettings>? columnSettings;

  /// The data displayed in this table.
  final List<TableDataSet> dataSets;

  /// Optional. Store rendering strategy
  final TimeSeriesTableMetricVisualization? metricVisualization;

  TimeSeriesTable({
    this.columnSettings,
    required this.dataSets,
    this.metricVisualization,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final columnSettingsValue = columnSettings;
    if (columnSettingsValue != null) {
      map['columnSettings'] =
          Input.encodeList<ColumnSettings, Map<String, dynamic>>(
              columnSettingsValue, (value) => value.toMap());
    }
    map['dataSets'] = Input.encodeList<TableDataSet, Map<String, dynamic>>(
        dataSets, (value) => value.toMap());
    final metricVisualizationValue = metricVisualization;
    if (metricVisualizationValue != null) {
      map['metricVisualization'] = metricVisualizationValue.value;
    }
    return map;
  }

  factory TimeSeriesTable.fromMap(Map<String, dynamic> map) {
    return TimeSeriesTable(
      columnSettings: map['columnSettings'] == null
          ? null
          : Input.decodeList<ColumnSettings>(
              map['columnSettings'],
              (value) => ColumnSettings.fromMap(
                  (value as Map).cast<String, dynamic>())),
      dataSets: Input.decodeList<TableDataSet>(
          map['dataSets'],
          (value) =>
              TableDataSet.fromMap((value as Map).cast<String, dynamic>())),
      metricVisualization: map['metricVisualization'] == null
          ? null
          : TimeSeriesTableMetricVisualization.fromValue(
              map['metricVisualization'] as String),
    );
  }
}
