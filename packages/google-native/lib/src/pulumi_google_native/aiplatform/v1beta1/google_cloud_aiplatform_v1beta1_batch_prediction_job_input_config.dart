// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_big_query_source.dart';
import 'google_cloud_aiplatform_v1beta1_gcs_source.dart';

/// Configures the input to BatchPredictionJob. See Model.supported_input_storage_formats for Model's supported input formats, and how instances should be expressed via any of them.
class GoogleCloudAiplatformV1beta1BatchPredictionJobInputConfig {
  /// The BigQuery location of the input table. The schema of the table should be in the format described by the given context OpenAPI Schema, if one is provided. The table may contain additional columns that are not described by the schema, and they will be ignored.
  final GoogleCloudAiplatformV1beta1BigQuerySource? bigquerySource;

  /// The Cloud Storage location for the input instances.
  final GoogleCloudAiplatformV1beta1GcsSource? gcsSource;

  /// The format in which instances are given, must be one of the Model's supported_input_storage_formats.
  final String instancesFormat;

  GoogleCloudAiplatformV1beta1BatchPredictionJobInputConfig({
    this.bigquerySource,
    this.gcsSource,
    required this.instancesFormat,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bigquerySourceValue = bigquerySource;
    if (bigquerySourceValue != null) {
      map['bigquerySource'] = bigquerySourceValue.toMap();
    }
    final gcsSourceValue = gcsSource;
    if (gcsSourceValue != null) {
      map['gcsSource'] = gcsSourceValue.toMap();
    }
    map['instancesFormat'] = instancesFormat;
    return map;
  }

  factory GoogleCloudAiplatformV1beta1BatchPredictionJobInputConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1BatchPredictionJobInputConfig(
      bigquerySource: map['bigquerySource'] == null
          ? null
          : GoogleCloudAiplatformV1beta1BigQuerySource.fromMap(
              (map['bigquerySource'] as Map).cast<String, dynamic>()),
      gcsSource: map['gcsSource'] == null
          ? null
          : GoogleCloudAiplatformV1beta1GcsSource.fromMap(
              (map['gcsSource'] as Map).cast<String, dynamic>()),
      instancesFormat: map['instancesFormat'] as String,
    );
  }
}
