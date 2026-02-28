// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_big_query_destination_response.dart';
import 'google_cloud_aiplatform_v1beta1_gcs_destination_response.dart';

/// Output from BatchPredictionJob for Model Monitoring baseline dataset, which can be used to generate baseline attribution scores.
class GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigExplanationConfigExplanationBaselineResponse {
  /// BigQuery location for BatchExplain output.
  final GoogleCloudAiplatformV1beta1BigQueryDestinationResponse bigquery;

  /// Cloud Storage location for BatchExplain output.
  final GoogleCloudAiplatformV1beta1GcsDestinationResponse gcs;

  /// The storage format of the predictions generated BatchPrediction job.
  final String predictionFormat;

  /// Creates a new [GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigExplanationConfigExplanationBaselineResponse].
  /// [bigquery] BigQuery location for BatchExplain output.
  /// [gcs] Cloud Storage location for BatchExplain output.
  /// [predictionFormat] The storage format of the predictions generated BatchPrediction job.
  GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigExplanationConfigExplanationBaselineResponse({
    required this.bigquery,
    required this.gcs,
    required this.predictionFormat,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bigquery'] = bigquery.toMap();
    map['gcs'] = gcs.toMap();
    map['predictionFormat'] = predictionFormat;
    return map;
  }

  factory GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigExplanationConfigExplanationBaselineResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigExplanationConfigExplanationBaselineResponse(
      bigquery: GoogleCloudAiplatformV1beta1BigQueryDestinationResponse.fromMap(
          (map['bigquery'] as Map).cast<String, dynamic>()),
      gcs: GoogleCloudAiplatformV1beta1GcsDestinationResponse.fromMap(
          (map['gcs'] as Map).cast<String, dynamic>()),
      predictionFormat: map['predictionFormat'] as String,
    );
  }
}
