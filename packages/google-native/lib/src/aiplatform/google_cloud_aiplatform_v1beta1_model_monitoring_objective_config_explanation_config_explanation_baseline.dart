// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_big_query_destination.dart';
import 'google_cloud_aiplatform_v1beta1_gcs_destination.dart';
import 'google_cloud_aiplatform_v1beta1_model_monitoring_objective_config_explanation_config_explanation_baseline_prediction_format.dart';

/// Output from BatchPredictionJob for Model Monitoring baseline dataset, which can be used to generate baseline attribution scores.
class GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigExplanationConfigExplanationBaseline {
  /// BigQuery location for BatchExplain output.
  final GoogleCloudAiplatformV1beta1BigQueryDestination? bigquery;

  /// Cloud Storage location for BatchExplain output.
  final GoogleCloudAiplatformV1beta1GcsDestination? gcs;

  /// The storage format of the predictions generated BatchPrediction job.
  final GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigExplanationConfigExplanationBaselinePredictionFormat?
  predictionFormat;

  /// Creates a new [GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigExplanationConfigExplanationBaseline].
  /// [bigquery] BigQuery location for BatchExplain output.
  /// [gcs] Cloud Storage location for BatchExplain output.
  /// [predictionFormat] The storage format of the predictions generated BatchPrediction job.
  GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigExplanationConfigExplanationBaseline({
    this.bigquery,
    this.gcs,
    this.predictionFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigquery': ?bigquery == null ? null : bigquery!.toMap(),
      'gcs': ?gcs == null ? null : gcs!.toMap(),
      'predictionFormat': ?predictionFormat == null
          ? null
          : predictionFormat!.value,
    };
  }

  factory GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigExplanationConfigExplanationBaseline.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigExplanationConfigExplanationBaseline(
      bigquery: map['bigquery'] == null
          ? null
          : GoogleCloudAiplatformV1beta1BigQueryDestination.fromMap(
              (map['bigquery'] as Map).cast<String, dynamic>(),
            ),
      gcs: map['gcs'] == null
          ? null
          : GoogleCloudAiplatformV1beta1GcsDestination.fromMap(
              (map['gcs'] as Map).cast<String, dynamic>(),
            ),
      predictionFormat: map['predictionFormat'] == null
          ? null
          : GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigExplanationConfigExplanationBaselinePredictionFormat.fromValue(
              map['predictionFormat'] as String,
            ),
    );
  }
}
