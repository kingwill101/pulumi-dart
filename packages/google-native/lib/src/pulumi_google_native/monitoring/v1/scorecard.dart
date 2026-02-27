// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gauge_view.dart';
import 'spark_chart_view.dart';
import 'threshold.dart';
import 'time_series_query.dart';

/// A widget showing the latest value of a metric, and how this value relates to one or more thresholds.
class Scorecard {
  /// Will cause the Scorecard to show only the value, with no indicator to its value relative to its thresholds.
  final Map<String, dynamic>? blankView;

  /// Will cause the scorecard to show a gauge chart.
  final GaugeView? gaugeView;

  /// Will cause the scorecard to show a spark chart.
  final SparkChartView? sparkChartView;

  /// The thresholds used to determine the state of the scorecard given the time series' current value. For an actual value x, the scorecard is in a danger state if x is less than or equal to a danger threshold that triggers below, or greater than or equal to a danger threshold that triggers above. Similarly, if x is above/below a warning threshold that triggers above/below, then the scorecard is in a warning state - unless x also puts it in a danger state. (Danger trumps warning.)As an example, consider a scorecard with the following four thresholds: { value: 90, category: 'DANGER', trigger: 'ABOVE', }, { value: 70, category: 'WARNING', trigger: 'ABOVE', }, { value: 10, category: 'DANGER', trigger: 'BELOW', }, { value: 20, category: 'WARNING', trigger: 'BELOW', } Then: values less than or equal to 10 would put the scorecard in a DANGER state, values greater than 10 but less than or equal to 20 a WARNING state, values strictly between 20 and 70 an OK state, values greater than or equal to 70 but less than 90 a WARNING state, and values greater than or equal to 90 a DANGER state.
  final List<Threshold>? thresholds;

  /// Fields for querying time series data from the Stackdriver metrics API.
  final TimeSeriesQuery timeSeriesQuery;

  Scorecard({
    this.blankView,
    this.gaugeView,
    this.sparkChartView,
    this.thresholds,
    required this.timeSeriesQuery,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final blankViewValue = blankView;
    if (blankViewValue != null) {
      map['blankView'] = blankViewValue;
    }
    final gaugeViewValue = gaugeView;
    if (gaugeViewValue != null) {
      map['gaugeView'] = gaugeViewValue.toMap();
    }
    final sparkChartViewValue = sparkChartView;
    if (sparkChartViewValue != null) {
      map['sparkChartView'] = sparkChartViewValue.toMap();
    }
    final thresholdsValue = thresholds;
    if (thresholdsValue != null) {
      map['thresholds'] =
          pulumi.Input.encodeList<Threshold, Map<String, dynamic>>(
              thresholdsValue, (value) => value.toMap());
    }
    map['timeSeriesQuery'] = timeSeriesQuery.toMap();
    return map;
  }

  factory Scorecard.fromMap(Map<String, dynamic> map) {
    return Scorecard(
      blankView: map['blankView'] == null
          ? null
          : (map['blankView'] as Map).cast<String, dynamic>(),
      gaugeView: map['gaugeView'] == null
          ? null
          : GaugeView.fromMap(
              (map['gaugeView'] as Map).cast<String, dynamic>()),
      sparkChartView: map['sparkChartView'] == null
          ? null
          : SparkChartView.fromMap(
              (map['sparkChartView'] as Map).cast<String, dynamic>()),
      thresholds: map['thresholds'] == null
          ? null
          : pulumi.Input.decodeList<Threshold>(
              map['thresholds'],
              (value) =>
                  Threshold.fromMap((value as Map).cast<String, dynamic>())),
      timeSeriesQuery: TimeSeriesQuery.fromMap(
          (map['timeSeriesQuery'] as Map).cast<String, dynamic>()),
    );
  }
}
