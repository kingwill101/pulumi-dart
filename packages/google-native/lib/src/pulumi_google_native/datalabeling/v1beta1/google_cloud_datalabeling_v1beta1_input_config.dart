// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datalabeling_v1beta1_big_query_source.dart';
import 'google_cloud_datalabeling_v1beta1_classification_metadata.dart';
import 'google_cloud_datalabeling_v1beta1_gcs_source.dart';
import 'google_cloud_datalabeling_v1beta1_input_config_annotation_type.dart';
import 'google_cloud_datalabeling_v1beta1_input_config_data_type.dart';
import 'google_cloud_datalabeling_v1beta1_text_metadata.dart';

/// The configuration of input data, including data type, location, etc.
class GoogleCloudDatalabelingV1beta1InputConfig {
  /// Optional. The type of annotation to be performed on this data. You must specify this field if you are using this InputConfig in an EvaluationJob.
  final GoogleCloudDatalabelingV1beta1InputConfigAnnotationType? annotationType;

  /// Source located in BigQuery. You must specify this field if you are using this InputConfig in an EvaluationJob.
  final GoogleCloudDatalabelingV1beta1BigQuerySource? bigquerySource;

  /// Optional. Metadata about annotations for the input. You must specify this field if you are using this InputConfig in an EvaluationJob for a model version that performs classification.
  final GoogleCloudDatalabelingV1beta1ClassificationMetadata?
      classificationMetadata;

  /// Data type must be specifed when user tries to import data.
  final GoogleCloudDatalabelingV1beta1InputConfigDataType dataType;

  /// Source located in Cloud Storage.
  final GoogleCloudDatalabelingV1beta1GcsSource? gcsSource;

  /// Required for text import, as language code must be specified.
  final GoogleCloudDatalabelingV1beta1TextMetadata? textMetadata;

  GoogleCloudDatalabelingV1beta1InputConfig({
    this.annotationType,
    this.bigquerySource,
    this.classificationMetadata,
    required this.dataType,
    this.gcsSource,
    this.textMetadata,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationTypeValue = annotationType;
    if (annotationTypeValue != null) {
      map['annotationType'] = annotationTypeValue.value;
    }
    final bigquerySourceValue = bigquerySource;
    if (bigquerySourceValue != null) {
      map['bigquerySource'] = bigquerySourceValue.toMap();
    }
    final classificationMetadataValue = classificationMetadata;
    if (classificationMetadataValue != null) {
      map['classificationMetadata'] = classificationMetadataValue.toMap();
    }
    map['dataType'] = dataType.value;
    final gcsSourceValue = gcsSource;
    if (gcsSourceValue != null) {
      map['gcsSource'] = gcsSourceValue.toMap();
    }
    final textMetadataValue = textMetadata;
    if (textMetadataValue != null) {
      map['textMetadata'] = textMetadataValue.toMap();
    }
    return map;
  }

  factory GoogleCloudDatalabelingV1beta1InputConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1InputConfig(
      annotationType: map['annotationType'] == null
          ? null
          : GoogleCloudDatalabelingV1beta1InputConfigAnnotationType.fromValue(
              map['annotationType'] as String),
      bigquerySource: map['bigquerySource'] == null
          ? null
          : GoogleCloudDatalabelingV1beta1BigQuerySource.fromMap(
              (map['bigquerySource'] as Map).cast<String, dynamic>()),
      classificationMetadata: map['classificationMetadata'] == null
          ? null
          : GoogleCloudDatalabelingV1beta1ClassificationMetadata.fromMap(
              (map['classificationMetadata'] as Map).cast<String, dynamic>()),
      dataType: GoogleCloudDatalabelingV1beta1InputConfigDataType.fromValue(
          map['dataType'] as String),
      gcsSource: map['gcsSource'] == null
          ? null
          : GoogleCloudDatalabelingV1beta1GcsSource.fromMap(
              (map['gcsSource'] as Map).cast<String, dynamic>()),
      textMetadata: map['textMetadata'] == null
          ? null
          : GoogleCloudDatalabelingV1beta1TextMetadata.fromMap(
              (map['textMetadata'] as Map).cast<String, dynamic>()),
    );
  }
}
