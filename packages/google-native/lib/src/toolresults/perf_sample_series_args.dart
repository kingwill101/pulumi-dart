// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_perf_sample_series.dart';

/// {@template pulumi_toolresults_v1beta3_perf_sample_series_args_doc}
/// The set of arguments for PerfSampleSeries.
/// {@endtemplate}
/// {@macro pulumi_toolresults_v1beta3_perf_sample_series_args_doc}
class PerfSampleSeriesArgs {
  /// Basic series represented by a line chart
  final pulumi.Input<BasicPerfSampleSeries>? basicPerfSampleSeries;
  final pulumi.Input<String> executionId;
  final pulumi.Input<String> historyId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> stepId;

  /// Creates a new [PerfSampleSeriesArgs].
  /// [basicPerfSampleSeries] Basic series represented by a line chart
  /// [executionId] Required.
  /// [historyId] Required.
  /// [project] Optional.
  /// [stepId] Required.
  PerfSampleSeriesArgs({
    BasicPerfSampleSeries? basicPerfSampleSeries,
    required String executionId,
    required String historyId,
    String? project,
    required String stepId,
  })  : basicPerfSampleSeries =
            pulumi.Input.asOptionalInput<BasicPerfSampleSeries>(
                basicPerfSampleSeries),
        executionId = pulumi.Input.asInput<String>(executionId),
        historyId = pulumi.Input.asInput<String>(historyId),
        project = pulumi.Input.asOptionalInput<String>(project),
        stepId = pulumi.Input.asInput<String>(stepId);

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
      basicPerfSampleSeries: map['basicPerfSampleSeries'] == null
          ? null
          : BasicPerfSampleSeries.fromMap(
              (map['basicPerfSampleSeries'] as Map).cast<String, dynamic>()),
      executionId: map['executionId'] as String,
      historyId: map['historyId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      stepId: map['stepId'] as String,
    );
  }
}
