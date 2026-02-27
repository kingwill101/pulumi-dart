// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getPerfSampleSeries.
class GetPerfSampleSeriesArgs {
  final Input<String> executionId;
  final Input<String> historyId;
  final Input<String>? project;
  final Input<String> sampleSeriesId;
  final Input<String> stepId;

  GetPerfSampleSeriesArgs({
    required this.executionId,
    required this.historyId,
    this.project,
    required this.sampleSeriesId,
    required this.stepId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['executionId'] = executionId;
    map['historyId'] = historyId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sampleSeriesId'] = sampleSeriesId;
    map['stepId'] = stepId;
    return map;
  }

  factory GetPerfSampleSeriesArgs.fromMap(Map<String, dynamic> map) {
    return GetPerfSampleSeriesArgs(
      executionId: Input.asInput<String>(map['executionId']),
      historyId: Input.asInput<String>(map['historyId']),
      project: Input.asOptionalInput<String>(map['project']),
      sampleSeriesId: Input.asInput<String>(map['sampleSeriesId']),
      stepId: Input.asInput<String>(map['stepId']),
    );
  }
}
