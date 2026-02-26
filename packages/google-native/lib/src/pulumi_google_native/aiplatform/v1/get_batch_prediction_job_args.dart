// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getBatchPredictionJob.
class GetBatchPredictionJobArgs {
  final Input<String> batchPredictionJobId;
  final Input<String> location;
  final Input<String>? project;

  GetBatchPredictionJobArgs({
    required this.batchPredictionJobId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['batchPredictionJobId'] = batchPredictionJobId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetBatchPredictionJobArgs.fromMap(Map<String, dynamic> map) {
    return GetBatchPredictionJobArgs(
      batchPredictionJobId: Input.asInput<String>(map['batchPredictionJobId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
