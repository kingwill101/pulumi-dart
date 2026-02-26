// ignore_for_file: unused_element, unnecessary_cast

import 'google_monitoring_v3_range.dart';

/// A DistributionCut defines a TimeSeries and thresholds used for measuring good service and total service. The TimeSeries must have ValueType = DISTRIBUTION and MetricKind = DELTA or MetricKind = CUMULATIVE. The computed good_service will be the estimated count of values in the Distribution that fall within the specified min and max.
class DistributionCut {
  /// A monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) specifying a TimeSeries aggregating values. Must have ValueType = DISTRIBUTION and MetricKind = DELTA or MetricKind = CUMULATIVE.
  final String? distributionFilter;

  /// Range of values considered "good." For a one-sided range, set one bound to an infinite value.
  final GoogleMonitoringV3Range? range;

  DistributionCut({
    this.distributionFilter,
    this.range,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final distributionFilterValue = distributionFilter;
    if (distributionFilterValue != null) {
      map['distributionFilter'] = distributionFilterValue;
    }
    final rangeValue = range;
    if (rangeValue != null) {
      map['range'] = rangeValue.toMap();
    }
    return map;
  }

  factory DistributionCut.fromMap(Map<String, dynamic> map) {
    return DistributionCut(
      distributionFilter: map['distributionFilter'] == null
          ? null
          : map['distributionFilter'] as String,
      range: map['range'] == null
          ? null
          : GoogleMonitoringV3Range.fromMap(
              (map['range'] as Map).cast<String, dynamic>()),
    );
  }
}
