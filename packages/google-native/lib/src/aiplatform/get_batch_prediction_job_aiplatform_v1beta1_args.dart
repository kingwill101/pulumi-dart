// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_get_batch_prediction_job_aiplatform_v1beta1_args_doc}
/// Arguments for getBatchPredictionJob.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_get_batch_prediction_job_aiplatform_v1beta1_args_doc}
class GetBatchPredictionJobAiplatformV1beta1Args {
  final pulumi.Input<String> batchPredictionJobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBatchPredictionJobAiplatformV1beta1Args].
  /// [batchPredictionJobId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetBatchPredictionJobAiplatformV1beta1Args({
    required String batchPredictionJobId,
    required String location,
    String? project,
  })  : batchPredictionJobId =
            pulumi.Input.asInput<String>(batchPredictionJobId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

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
      batchPredictionJobId: map['batchPredictionJobId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
