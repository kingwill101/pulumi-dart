// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_big_query_source_response.dart';
import 'google_cloud_aiplatform_v1_gcs_source_response.dart';

/// Configures the input to BatchPredictionJob. See Model.supported_input_storage_formats for Model's supported input formats, and how instances should be expressed via any of them.
class GoogleCloudAiplatformV1BatchPredictionJobInputConfigResponse {
  /// The BigQuery location of the input table. The schema of the table should be in the format described by the given context OpenAPI Schema, if one is provided. The table may contain additional columns that are not described by the schema, and they will be ignored.
  final GoogleCloudAiplatformV1BigQuerySourceResponse bigquerySource;

  /// The Cloud Storage location for the input instances.
  final GoogleCloudAiplatformV1GcsSourceResponse gcsSource;

  /// The format in which instances are given, must be one of the Model's supported_input_storage_formats.
  final String instancesFormat;

  GoogleCloudAiplatformV1BatchPredictionJobInputConfigResponse({
    required this.bigquerySource,
    required this.gcsSource,
    required this.instancesFormat,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bigquerySource'] = bigquerySource.toMap();
    map['gcsSource'] = gcsSource.toMap();
    map['instancesFormat'] = instancesFormat;
    return map;
  }

  factory GoogleCloudAiplatformV1BatchPredictionJobInputConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1BatchPredictionJobInputConfigResponse(
      bigquerySource: GoogleCloudAiplatformV1BigQuerySourceResponse.fromMap(
          (map['bigquerySource'] as Map).cast<String, dynamic>()),
      gcsSource: GoogleCloudAiplatformV1GcsSourceResponse.fromMap(
          (map['gcsSource'] as Map).cast<String, dynamic>()),
      instancesFormat: map['instancesFormat'] as String,
    );
  }
}
