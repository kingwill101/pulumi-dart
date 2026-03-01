// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_big_query_destination_response.dart';

/// Configuration for logging request-response to a BigQuery table.
class GoogleCloudAiplatformV1PredictRequestResponseLoggingConfigResponse {
  /// BigQuery table for logging. If only given a project, a new dataset will be created with name `logging__` where will be made BigQuery-dataset-name compatible (e.g. most special characters will become underscores). If no table name is given, a new table will be created with name `request_response_logging`
  final GoogleCloudAiplatformV1BigQueryDestinationResponse bigqueryDestination;

  /// If logging is enabled or not.
  final bool enabled;

  /// Percentage of requests to be logged, expressed as a fraction in range(0,1].
  final double samplingRate;

  /// Creates a new [GoogleCloudAiplatformV1PredictRequestResponseLoggingConfigResponse].
  /// [bigqueryDestination] BigQuery table for logging. If only given a project, a new dataset will be created with name `logging__` where will be made BigQuery-dataset-name compatible (e.g. most special characters will become underscores). If no table name is given, a new table will be created with name `request_response_logging`
  /// [enabled] If logging is enabled or not.
  /// [samplingRate] Percentage of requests to be logged, expressed as a fraction in range(0,1].
  GoogleCloudAiplatformV1PredictRequestResponseLoggingConfigResponse({
    required this.bigqueryDestination,
    required this.enabled,
    required this.samplingRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryDestination': bigqueryDestination.toMap(),
      'enabled': enabled,
      'samplingRate': samplingRate,
    };
  }

  factory GoogleCloudAiplatformV1PredictRequestResponseLoggingConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1PredictRequestResponseLoggingConfigResponse(
      bigqueryDestination:
          GoogleCloudAiplatformV1BigQueryDestinationResponse.fromMap(
            (map['bigqueryDestination'] as Map).cast<String, dynamic>(),
          ),
      enabled: map['enabled'] as bool,
      samplingRate: map['samplingRate'] as double,
    );
  }
}
