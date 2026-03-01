// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_big_query_source.dart';
import 'google_cloud_aiplatform_v1_gcs_source.dart';

/// Configures the input to BatchPredictionJob. See Model.supported_input_storage_formats for Model's supported input formats, and how instances should be expressed via any of them.
class GoogleCloudAiplatformV1BatchPredictionJobInputConfig {
  /// The BigQuery location of the input table. The schema of the table should be in the format described by the given context OpenAPI Schema, if one is provided. The table may contain additional columns that are not described by the schema, and they will be ignored.
  final GoogleCloudAiplatformV1BigQuerySource? bigquerySource;

  /// The Cloud Storage location for the input instances.
  final GoogleCloudAiplatformV1GcsSource? gcsSource;

  /// The format in which instances are given, must be one of the Model's supported_input_storage_formats.
  final String instancesFormat;

  /// Creates a new [GoogleCloudAiplatformV1BatchPredictionJobInputConfig].
  /// [bigquerySource] The BigQuery location of the input table. The schema of the table should be in the format described by the given context OpenAPI Schema, if one is provided. The table may contain additional columns that are not described by the schema, and they will be ignored.
  /// [gcsSource] The Cloud Storage location for the input instances.
  /// [instancesFormat] The format in which instances are given, must be one of the Model's supported_input_storage_formats.
  GoogleCloudAiplatformV1BatchPredictionJobInputConfig({
    this.bigquerySource,
    this.gcsSource,
    required this.instancesFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigquerySource': ?bigquerySource == null
          ? null
          : bigquerySource!.toMap(),
      'gcsSource': ?gcsSource == null ? null : gcsSource!.toMap(),
      'instancesFormat': instancesFormat,
    };
  }

  factory GoogleCloudAiplatformV1BatchPredictionJobInputConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1BatchPredictionJobInputConfig(
      bigquerySource: map['bigquerySource'] == null
          ? null
          : GoogleCloudAiplatformV1BigQuerySource.fromMap(
              (map['bigquerySource'] as Map).cast<String, dynamic>(),
            ),
      gcsSource: map['gcsSource'] == null
          ? null
          : GoogleCloudAiplatformV1GcsSource.fromMap(
              (map['gcsSource'] as Map).cast<String, dynamic>(),
            ),
      instancesFormat: map['instancesFormat'] as String,
    );
  }
}
