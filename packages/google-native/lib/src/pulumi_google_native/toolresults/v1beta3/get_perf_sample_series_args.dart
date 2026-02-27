// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPerfSampleSeries.
class GetPerfSampleSeriesArgs {
  final pulumi.Input<String> executionId;
  final pulumi.Input<String> historyId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sampleSeriesId;
  final pulumi.Input<String> stepId;

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
      executionId: pulumi.Input.asInput<String>(map['executionId']),
      historyId: pulumi.Input.asInput<String>(map['historyId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      sampleSeriesId: pulumi.Input.asInput<String>(map['sampleSeriesId']),
      stepId: pulumi.Input.asInput<String>(map['stepId']),
    );
  }
}
