// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_examples_example_gcs_source_data_format.dart';
import 'google_cloud_aiplatform_v1beta1_gcs_source.dart';

/// The Cloud Storage input instances.
class GoogleCloudAiplatformV1beta1ExamplesExampleGcsSource {
  /// The format in which instances are given, if not specified, assume it's JSONL format. Currently only JSONL format is supported.
  final GoogleCloudAiplatformV1beta1ExamplesExampleGcsSourceDataFormat?
      dataFormat;

  /// The Cloud Storage location for the input instances.
  final GoogleCloudAiplatformV1beta1GcsSource? gcsSource;

  /// Creates a new [GoogleCloudAiplatformV1beta1ExamplesExampleGcsSource].
  /// [dataFormat] The format in which instances are given, if not specified, assume it's JSONL format. Currently only JSONL format is supported.
  /// [gcsSource] The Cloud Storage location for the input instances.
  GoogleCloudAiplatformV1beta1ExamplesExampleGcsSource({
    this.dataFormat,
    this.gcsSource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataFormatValue = dataFormat;
    if (dataFormatValue != null) {
      map['dataFormat'] = dataFormatValue.value;
    }
    final gcsSourceValue = gcsSource;
    if (gcsSourceValue != null) {
      map['gcsSource'] = gcsSourceValue.toMap();
    }
    return map;
  }

  factory GoogleCloudAiplatformV1beta1ExamplesExampleGcsSource.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ExamplesExampleGcsSource(
      dataFormat: map['dataFormat'] == null
          ? null
          : GoogleCloudAiplatformV1beta1ExamplesExampleGcsSourceDataFormat
              .fromValue(map['dataFormat'] as String),
      gcsSource: map['gcsSource'] == null
          ? null
          : GoogleCloudAiplatformV1beta1GcsSource.fromMap(
              (map['gcsSource'] as Map).cast<String, dynamic>()),
    );
  }
}
