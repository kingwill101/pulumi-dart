// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'basic_perf_sample_series.dart';

/// The set of arguments for PerfSampleSeries.
class PerfSampleSeriesArgs {
  /// Basic series represented by a line chart
  final Input<BasicPerfSampleSeries>? basicPerfSampleSeries;
  final Input<String> executionId;
  final Input<String> historyId;
  final Input<String>? project;
  final Input<String> stepId;

  PerfSampleSeriesArgs({
    this.basicPerfSampleSeries,
    required this.executionId,
    required this.historyId,
    this.project,
    required this.stepId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final basicPerfSampleSeriesValue = basicPerfSampleSeries;
    if (basicPerfSampleSeriesValue != null) {
      map['basicPerfSampleSeries'] = Input.mapOptionalInputValue<
              BasicPerfSampleSeries, Map<String, dynamic>>(
          basicPerfSampleSeriesValue, (value) => value.toMap());
    }
    map['executionId'] = executionId;
    map['historyId'] = historyId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['stepId'] = stepId;
    return map;
  }

  factory PerfSampleSeriesArgs.fromMap(Map<String, dynamic> map) {
    return PerfSampleSeriesArgs(
      basicPerfSampleSeries: Input.asOptionalInput<BasicPerfSampleSeries>(
          map['basicPerfSampleSeries']),
      executionId: Input.asInput<String>(map['executionId']),
      historyId: Input.asInput<String>(map['historyId']),
      project: Input.asOptionalInput<String>(map['project']),
      stepId: Input.asInput<String>(map['stepId']),
    );
  }
}
