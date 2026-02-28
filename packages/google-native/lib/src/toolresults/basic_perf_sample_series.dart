// ignore_for_file: unused_element, unnecessary_cast

import 'basic_perf_sample_series_perf_metric_type.dart';
import 'basic_perf_sample_series_perf_unit.dart';
import 'basic_perf_sample_series_sample_series_label.dart';

/// Encapsulates the metadata for basic sample series represented by a line chart
class BasicPerfSampleSeries {
  final BasicPerfSampleSeriesPerfMetricType? perfMetricType;
  final BasicPerfSampleSeriesPerfUnit? perfUnit;
  final BasicPerfSampleSeriesSampleSeriesLabel? sampleSeriesLabel;

  /// Creates a new [BasicPerfSampleSeries].
  /// [perfMetricType] Optional.
  /// [perfUnit] Optional.
  /// [sampleSeriesLabel] Optional.
  BasicPerfSampleSeries({
    this.perfMetricType,
    this.perfUnit,
    this.sampleSeriesLabel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final perfMetricTypeValue = perfMetricType;
    if (perfMetricTypeValue != null) {
      map['perfMetricType'] = perfMetricTypeValue.value;
    }
    final perfUnitValue = perfUnit;
    if (perfUnitValue != null) {
      map['perfUnit'] = perfUnitValue.value;
    }
    final sampleSeriesLabelValue = sampleSeriesLabel;
    if (sampleSeriesLabelValue != null) {
      map['sampleSeriesLabel'] = sampleSeriesLabelValue.value;
    }
    return map;
  }

  factory BasicPerfSampleSeries.fromMap(Map<String, dynamic> map) {
    return BasicPerfSampleSeries(
      perfMetricType: map['perfMetricType'] == null
          ? null
          : BasicPerfSampleSeriesPerfMetricType.fromValue(
              map['perfMetricType'] as String),
      perfUnit: map['perfUnit'] == null
          ? null
          : BasicPerfSampleSeriesPerfUnit.fromValue(map['perfUnit'] as String),
      sampleSeriesLabel: map['sampleSeriesLabel'] == null
          ? null
          : BasicPerfSampleSeriesSampleSeriesLabel.fromValue(
              map['sampleSeriesLabel'] as String),
    );
  }
}
