// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_explanation_metadata_response.dart';
import 'google_cloud_aiplatform_v1beta1_explanation_parameters_response.dart';

/// Specification of Model explanation.
class GoogleCloudAiplatformV1beta1ExplanationSpecResponse {
  /// Optional. Metadata describing the Model's input and output for explanation.
  final GoogleCloudAiplatformV1beta1ExplanationMetadataResponse metadata;

  /// Parameters that configure explaining of the Model's predictions.
  final GoogleCloudAiplatformV1beta1ExplanationParametersResponse parameters;

  /// Creates a new [GoogleCloudAiplatformV1beta1ExplanationSpecResponse].
  /// [metadata] Optional. Metadata describing the Model's input and output for explanation.
  /// [parameters] Parameters that configure explaining of the Model's predictions.
  GoogleCloudAiplatformV1beta1ExplanationSpecResponse({
    required this.metadata,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metadata'] = metadata.toMap();
    map['parameters'] = parameters.toMap();
    return map;
  }

  factory GoogleCloudAiplatformV1beta1ExplanationSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ExplanationSpecResponse(
      metadata: GoogleCloudAiplatformV1beta1ExplanationMetadataResponse.fromMap(
          (map['metadata'] as Map).cast<String, dynamic>()),
      parameters:
          GoogleCloudAiplatformV1beta1ExplanationParametersResponse.fromMap(
              (map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}
