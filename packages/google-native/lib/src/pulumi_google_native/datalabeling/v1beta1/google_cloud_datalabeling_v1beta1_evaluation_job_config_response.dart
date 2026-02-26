// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datalabeling_v1beta1_bounding_poly_config_response.dart';
import 'google_cloud_datalabeling_v1beta1_evaluation_config_response.dart';
import 'google_cloud_datalabeling_v1beta1_evaluation_job_alert_config_response.dart';
import 'google_cloud_datalabeling_v1beta1_human_annotation_config_response.dart';
import 'google_cloud_datalabeling_v1beta1_image_classification_config_response.dart';
import 'google_cloud_datalabeling_v1beta1_input_config_response.dart';
import 'google_cloud_datalabeling_v1beta1_text_classification_config_response.dart';

/// Configures specific details of how a continuous evaluation job works. Provide this configuration when you create an EvaluationJob.
class GoogleCloudDatalabelingV1beta1EvaluationJobConfigResponse {
  /// Prediction keys that tell Data Labeling Service where to find the data for evaluation in your BigQuery table. When the service samples prediction input and output from your model version and saves it to BigQuery, the data gets stored as JSON strings in the BigQuery table. These keys tell Data Labeling Service how to parse the JSON. You can provide the following entries in this field: * `data_json_key`: the data key for prediction input. You must provide either this key or `reference_json_key`. * `reference_json_key`: the data reference key for prediction input. You must provide either this key or `data_json_key`. * `label_json_key`: the label key for prediction output. Required. * `label_score_json_key`: the score key for prediction output. Required. * `bounding_box_json_key`: the bounding box key for prediction output. Required if your model version perform image object detection. Learn [how to configure prediction keys](/ml-engine/docs/continuous-evaluation/create-job#prediction-keys).
  final Map<String, String> bigqueryImportKeys;

  /// Specify this field if your model version performs image object detection (bounding box detection). `annotationSpecSet` in this configuration must match EvaluationJob.annotationSpecSet.
  final GoogleCloudDatalabelingV1beta1BoundingPolyConfigResponse
      boundingPolyConfig;

  /// Details for calculating evaluation metrics and creating Evaulations. If your model version performs image object detection, you must specify the `boundingBoxEvaluationOptions` field within this configuration. Otherwise, provide an empty object for this configuration.
  final GoogleCloudDatalabelingV1beta1EvaluationConfigResponse evaluationConfig;

  /// Optional. Configuration details for evaluation job alerts. Specify this field if you want to receive email alerts if the evaluation job finds that your predictions have low mean average precision during a run.
  final GoogleCloudDatalabelingV1beta1EvaluationJobAlertConfigResponse
      evaluationJobAlertConfig;

  /// The maximum number of predictions to sample and save to BigQuery during each evaluation interval. This limit overrides `example_sample_percentage`: even if the service has not sampled enough predictions to fulfill `example_sample_perecentage` during an interval, it stops sampling predictions when it meets this limit.
  final int exampleCount;

  /// Fraction of predictions to sample and save to BigQuery during each evaluation interval. For example, 0.1 means 10% of predictions served by your model version get saved to BigQuery.
  final double exampleSamplePercentage;

  /// Optional. Details for human annotation of your data. If you set labelMissingGroundTruth to `true` for this evaluation job, then you must specify this field. If you plan to provide your own ground truth labels, then omit this field. Note that you must create an Instruction resource before you can specify this field. Provide the name of the instruction resource in the `instruction` field within this configuration.
  final GoogleCloudDatalabelingV1beta1HumanAnnotationConfigResponse
      humanAnnotationConfig;

  /// Specify this field if your model version performs image classification or general classification. `annotationSpecSet` in this configuration must match EvaluationJob.annotationSpecSet. `allowMultiLabel` in this configuration must match `classificationMetadata.isMultiLabel` in input_config.
  final GoogleCloudDatalabelingV1beta1ImageClassificationConfigResponse
      imageClassificationConfig;

  /// Rquired. Details for the sampled prediction input. Within this configuration, there are requirements for several fields: * `dataType` must be one of `IMAGE`, `TEXT`, or `GENERAL_DATA`. * `annotationType` must be one of `IMAGE_CLASSIFICATION_ANNOTATION`, `TEXT_CLASSIFICATION_ANNOTATION`, `GENERAL_CLASSIFICATION_ANNOTATION`, or `IMAGE_BOUNDING_BOX_ANNOTATION` (image object detection). * If your machine learning model performs classification, you must specify `classificationMetadata.isMultiLabel`. * You must specify `bigquerySource` (not `gcsSource`).
  final GoogleCloudDatalabelingV1beta1InputConfigResponse inputConfig;

  /// Specify this field if your model version performs text classification. `annotationSpecSet` in this configuration must match EvaluationJob.annotationSpecSet. `allowMultiLabel` in this configuration must match `classificationMetadata.isMultiLabel` in input_config.
  final GoogleCloudDatalabelingV1beta1TextClassificationConfigResponse
      textClassificationConfig;

  GoogleCloudDatalabelingV1beta1EvaluationJobConfigResponse({
    required this.bigqueryImportKeys,
    required this.boundingPolyConfig,
    required this.evaluationConfig,
    required this.evaluationJobAlertConfig,
    required this.exampleCount,
    required this.exampleSamplePercentage,
    required this.humanAnnotationConfig,
    required this.imageClassificationConfig,
    required this.inputConfig,
    required this.textClassificationConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bigqueryImportKeys'] = bigqueryImportKeys;
    map['boundingPolyConfig'] = boundingPolyConfig.toMap();
    map['evaluationConfig'] = evaluationConfig.toMap();
    map['evaluationJobAlertConfig'] = evaluationJobAlertConfig.toMap();
    map['exampleCount'] = exampleCount;
    map['exampleSamplePercentage'] = exampleSamplePercentage;
    map['humanAnnotationConfig'] = humanAnnotationConfig.toMap();
    map['imageClassificationConfig'] = imageClassificationConfig.toMap();
    map['inputConfig'] = inputConfig.toMap();
    map['textClassificationConfig'] = textClassificationConfig.toMap();
    return map;
  }

  factory GoogleCloudDatalabelingV1beta1EvaluationJobConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1EvaluationJobConfigResponse(
      bigqueryImportKeys:
          (map['bigqueryImportKeys'] as Map).cast<String, String>(),
      boundingPolyConfig:
          GoogleCloudDatalabelingV1beta1BoundingPolyConfigResponse.fromMap(
              (map['boundingPolyConfig'] as Map).cast<String, dynamic>()),
      evaluationConfig:
          GoogleCloudDatalabelingV1beta1EvaluationConfigResponse.fromMap(
              (map['evaluationConfig'] as Map).cast<String, dynamic>()),
      evaluationJobAlertConfig:
          GoogleCloudDatalabelingV1beta1EvaluationJobAlertConfigResponse
              .fromMap((map['evaluationJobAlertConfig'] as Map)
                  .cast<String, dynamic>()),
      exampleCount: map['exampleCount'] as int,
      exampleSamplePercentage: map['exampleSamplePercentage'] as double,
      humanAnnotationConfig:
          GoogleCloudDatalabelingV1beta1HumanAnnotationConfigResponse.fromMap(
              (map['humanAnnotationConfig'] as Map).cast<String, dynamic>()),
      imageClassificationConfig:
          GoogleCloudDatalabelingV1beta1ImageClassificationConfigResponse
              .fromMap((map['imageClassificationConfig'] as Map)
                  .cast<String, dynamic>()),
      inputConfig: GoogleCloudDatalabelingV1beta1InputConfigResponse.fromMap(
          (map['inputConfig'] as Map).cast<String, dynamic>()),
      textClassificationConfig:
          GoogleCloudDatalabelingV1beta1TextClassificationConfigResponse
              .fromMap((map['textClassificationConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
