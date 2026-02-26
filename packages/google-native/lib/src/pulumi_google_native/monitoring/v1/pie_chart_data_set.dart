// ignore_for_file: unused_element, unnecessary_cast

import 'time_series_query.dart';

/// Groups a time series query definition.
class PieChartDataSet {
  /// Optional. The lower bound on data point frequency for this data set, implemented by specifying the minimum alignment period to use in a time series query. For example, if the data is published once every 10 minutes, the min_alignment_period should be at least 10 minutes. It would not make sense to fetch and align data at one minute intervals.
  final String? minAlignmentPeriod;

  /// Optional. A template for the name of the slice. This name will be displayed in the legend and the tooltip of the pie chart. It replaces the auto-generated names for the slices. For example, if the template is set to ${resource.labels.zone}, the zone's value will be used for the name instead of the default name.
  final String? sliceNameTemplate;

  /// The query for the PieChart. See, google.monitoring.dashboard.v1.TimeSeriesQuery.
  final TimeSeriesQuery timeSeriesQuery;

  PieChartDataSet({
    this.minAlignmentPeriod,
    this.sliceNameTemplate,
    required this.timeSeriesQuery,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final minAlignmentPeriodValue = minAlignmentPeriod;
    if (minAlignmentPeriodValue != null) {
      map['minAlignmentPeriod'] = minAlignmentPeriodValue;
    }
    final sliceNameTemplateValue = sliceNameTemplate;
    if (sliceNameTemplateValue != null) {
      map['sliceNameTemplate'] = sliceNameTemplateValue;
    }
    map['timeSeriesQuery'] = timeSeriesQuery.toMap();
    return map;
  }

  factory PieChartDataSet.fromMap(Map<String, dynamic> map) {
    return PieChartDataSet(
      minAlignmentPeriod: map['minAlignmentPeriod'] == null
          ? null
          : map['minAlignmentPeriod'] as String,
      sliceNameTemplate: map['sliceNameTemplate'] == null
          ? null
          : map['sliceNameTemplate'] as String,
      timeSeriesQuery: TimeSeriesQuery.fromMap(
          (map['timeSeriesQuery'] as Map).cast<String, dynamic>()),
    );
  }
}
