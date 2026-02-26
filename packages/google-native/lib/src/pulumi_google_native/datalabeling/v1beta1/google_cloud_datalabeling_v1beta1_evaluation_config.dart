// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datalabeling_v1beta1_bounding_box_evaluation_options.dart';

/// Configuration details used for calculating evaluation metrics and creating an Evaluation.
class GoogleCloudDatalabelingV1beta1EvaluationConfig {
  /// Only specify this field if the related model performs image object detection (`IMAGE_BOUNDING_BOX_ANNOTATION`). Describes how to evaluate bounding boxes.
  final GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions?
      boundingBoxEvaluationOptions;

  GoogleCloudDatalabelingV1beta1EvaluationConfig({
    this.boundingBoxEvaluationOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final boundingBoxEvaluationOptionsValue = boundingBoxEvaluationOptions;
    if (boundingBoxEvaluationOptionsValue != null) {
      map['boundingBoxEvaluationOptions'] =
          boundingBoxEvaluationOptionsValue.toMap();
    }
    return map;
  }

  factory GoogleCloudDatalabelingV1beta1EvaluationConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1EvaluationConfig(
      boundingBoxEvaluationOptions: map['boundingBoxEvaluationOptions'] == null
          ? null
          : GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions.fromMap(
              (map['boundingBoxEvaluationOptions'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
