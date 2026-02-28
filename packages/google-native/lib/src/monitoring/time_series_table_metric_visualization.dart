/// Optional. Store rendering strategy
enum TimeSeriesTableMetricVisualization {
  metricVisualizationUnspecified("METRIC_VISUALIZATION_UNSPECIFIED"),
  number("NUMBER"),
  bar("BAR");

  const TimeSeriesTableMetricVisualization(this.value);
  final String value;

  static TimeSeriesTableMetricVisualization fromValue(String value) {
    for (final item in TimeSeriesTableMetricVisualization.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown TimeSeriesTableMetricVisualization value: $value');
  }
}
