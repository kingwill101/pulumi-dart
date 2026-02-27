/// The reduction operation to be used to combine time series into a single time series, where the value of each data point in the resulting series is a function of all the already aligned values in the input time series.Not all reducer operations can be applied to all time series. The valid choices depend on the metric_kind and the value_type of the original time series. Reduction can yield a time series with a different metric_kind or value_type than the input time series.Time series data must first be aligned (see per_series_aligner) in order to perform cross-time series reduction. If cross_series_reducer is specified, then per_series_aligner must be specified, and must not be ALIGN_NONE. An alignment_period must also be specified; otherwise, an error is returned.
enum AggregationCrossSeriesReducerMonitoringV3 {
  reduceNone("REDUCE_NONE"),
  reduceMean("REDUCE_MEAN"),
  reduceMin("REDUCE_MIN"),
  reduceMax("REDUCE_MAX"),
  reduceSum("REDUCE_SUM"),
  reduceStddev("REDUCE_STDDEV"),
  reduceCount("REDUCE_COUNT"),
  reduceCountTrue("REDUCE_COUNT_TRUE"),
  reduceCountFalse("REDUCE_COUNT_FALSE"),
  reduceFractionTrue("REDUCE_FRACTION_TRUE"),
  reducePercentile99("REDUCE_PERCENTILE_99"),
  reducePercentile95("REDUCE_PERCENTILE_95"),
  reducePercentile50("REDUCE_PERCENTILE_50"),
  reducePercentile05("REDUCE_PERCENTILE_05");

  const AggregationCrossSeriesReducerMonitoringV3(this.value);
  final String value;

  static AggregationCrossSeriesReducerMonitoringV3 fromValue(String value) {
    for (final item in AggregationCrossSeriesReducerMonitoringV3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AggregationCrossSeriesReducerMonitoringV3 value: $value');
  }
}
