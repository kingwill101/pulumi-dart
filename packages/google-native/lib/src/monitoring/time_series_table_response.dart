// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'column_settings_response.dart';
import 'table_data_set_response.dart';

/// A table that displays time series data.
class TimeSeriesTableResponse {
  /// Optional. The list of the persistent column settings for the table.
  final List<ColumnSettingsResponse> columnSettings;
  /// The data displayed in this table.
  final List<TableDataSetResponse> dataSets;
  /// Optional. Store rendering strategy
  final String metricVisualization;

  /// Creates a new [TimeSeriesTableResponse].
  /// [columnSettings] Optional. The list of the persistent column settings for the table.
  /// [dataSets] The data displayed in this table.
  /// [metricVisualization] Optional. Store rendering strategy
  TimeSeriesTableResponse({
    required this.columnSettings,
    required this.dataSets,
    required this.metricVisualization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnSettings': pulumi.Input.encodeList<ColumnSettingsResponse, Map<String, dynamic>>(columnSettings, (value) => value.toMap()),
      'dataSets': pulumi.Input.encodeList<TableDataSetResponse, Map<String, dynamic>>(dataSets, (value) => value.toMap()),
      'metricVisualization': metricVisualization,
    };
  }

  factory TimeSeriesTableResponse.fromMap(Map<String, dynamic> map) {
    return TimeSeriesTableResponse(
      columnSettings: pulumi.Input.decodeList<ColumnSettingsResponse>(map['columnSettings'], (value) => ColumnSettingsResponse.fromMap((value as Map).cast<String, dynamic>())),
      dataSets: pulumi.Input.decodeList<TableDataSetResponse>(map['dataSets'], (value) => TableDataSetResponse.fromMap((value as Map).cast<String, dynamic>())),
      metricVisualization: map['metricVisualization'] as String,
    );
  }
}

