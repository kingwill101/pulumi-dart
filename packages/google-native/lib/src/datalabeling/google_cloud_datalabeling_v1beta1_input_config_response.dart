// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datalabeling_v1beta1_big_query_source_response.dart';
import 'google_cloud_datalabeling_v1beta1_classification_metadata_response.dart';
import 'google_cloud_datalabeling_v1beta1_gcs_source_response.dart';
import 'google_cloud_datalabeling_v1beta1_text_metadata_response.dart';

/// The configuration of input data, including data type, location, etc.
class GoogleCloudDatalabelingV1beta1InputConfigResponse {
  /// Optional. The type of annotation to be performed on this data. You must specify this field if you are using this InputConfig in an EvaluationJob.
  final String annotationType;
  /// Source located in BigQuery. You must specify this field if you are using this InputConfig in an EvaluationJob.
  final GoogleCloudDatalabelingV1beta1BigQuerySourceResponse bigquerySource;
  /// Optional. Metadata about annotations for the input. You must specify this field if you are using this InputConfig in an EvaluationJob for a model version that performs classification.
  final GoogleCloudDatalabelingV1beta1ClassificationMetadataResponse classificationMetadata;
  /// Data type must be specifed when user tries to import data.
  final String dataType;
  /// Source located in Cloud Storage.
  final GoogleCloudDatalabelingV1beta1GcsSourceResponse gcsSource;
  /// Required for text import, as language code must be specified.
  final GoogleCloudDatalabelingV1beta1TextMetadataResponse textMetadata;

  /// Creates a new [GoogleCloudDatalabelingV1beta1InputConfigResponse].
  /// [annotationType] Optional. The type of annotation to be performed on this data. You must specify this field if you are using this InputConfig in an EvaluationJob.
  /// [bigquerySource] Source located in BigQuery. You must specify this field if you are using this InputConfig in an EvaluationJob.
  /// [classificationMetadata] Optional. Metadata about annotations for the input. You must specify this field if you are using this InputConfig in an EvaluationJob for a model version that performs classification.
  /// [dataType] Data type must be specifed when user tries to import data.
  /// [gcsSource] Source located in Cloud Storage.
  /// [textMetadata] Required for text import, as language code must be specified.
  GoogleCloudDatalabelingV1beta1InputConfigResponse({
    required this.annotationType,
    required this.bigquerySource,
    required this.classificationMetadata,
    required this.dataType,
    required this.gcsSource,
    required this.textMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotationType': annotationType,
      'bigquerySource': bigquerySource.toMap(),
      'classificationMetadata': classificationMetadata.toMap(),
      'dataType': dataType,
      'gcsSource': gcsSource.toMap(),
      'textMetadata': textMetadata.toMap(),
    };
  }

  factory GoogleCloudDatalabelingV1beta1InputConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1InputConfigResponse(
      annotationType: map['annotationType'] as String,
      bigquerySource: GoogleCloudDatalabelingV1beta1BigQuerySourceResponse.fromMap((map['bigquerySource'] as Map).cast<String, dynamic>()),
      classificationMetadata: GoogleCloudDatalabelingV1beta1ClassificationMetadataResponse.fromMap((map['classificationMetadata'] as Map).cast<String, dynamic>()),
      dataType: map['dataType'] as String,
      gcsSource: GoogleCloudDatalabelingV1beta1GcsSourceResponse.fromMap((map['gcsSource'] as Map).cast<String, dynamic>()),
      textMetadata: GoogleCloudDatalabelingV1beta1TextMetadataResponse.fromMap((map['textMetadata'] as Map).cast<String, dynamic>()),
    );
  }
}

