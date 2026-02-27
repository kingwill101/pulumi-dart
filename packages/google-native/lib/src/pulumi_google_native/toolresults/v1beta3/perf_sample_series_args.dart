// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_perf_sample_series.dart';

/// The set of arguments for PerfSampleSeries.
class PerfSampleSeriesArgs {
  /// Basic series represented by a line chart
  final pulumi.Input<BasicPerfSampleSeries>? basicPerfSampleSeries;
  final pulumi.Input<String> executionId;
  final pulumi.Input<String> historyId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> stepId;

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
      map['basicPerfSampleSeries'] = pulumi.Input.mapOptionalInputValue<
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
      basicPerfSampleSeries:
          pulumi.Input.asOptionalInput<BasicPerfSampleSeries>(
              map['basicPerfSampleSeries']),
      executionId: pulumi.Input.asInput<String>(map['executionId']),
      historyId: pulumi.Input.asInput<String>(map['historyId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      stepId: pulumi.Input.asInput<String>(map['stepId']),
    );
  }
}
