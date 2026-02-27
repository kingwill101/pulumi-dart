// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBatchPredictionJob.
class GetBatchPredictionJobAiplatformV1beta1Args {
  final pulumi.Input<String> batchPredictionJobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetBatchPredictionJobAiplatformV1beta1Args({
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

  factory GetBatchPredictionJobAiplatformV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetBatchPredictionJobAiplatformV1beta1Args(
      batchPredictionJobId:
          pulumi.Input.asInput<String>(map['batchPredictionJobId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
