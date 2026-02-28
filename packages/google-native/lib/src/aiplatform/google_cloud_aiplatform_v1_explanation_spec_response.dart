// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_explanation_metadata_response.dart';
import 'google_cloud_aiplatform_v1_explanation_parameters_response.dart';

/// Specification of Model explanation.
class GoogleCloudAiplatformV1ExplanationSpecResponse {
  /// Optional. Metadata describing the Model's input and output for explanation.
  final GoogleCloudAiplatformV1ExplanationMetadataResponse metadata;
  /// Parameters that configure explaining of the Model's predictions.
  final GoogleCloudAiplatformV1ExplanationParametersResponse parameters;

  /// Creates a new [GoogleCloudAiplatformV1ExplanationSpecResponse].
  /// [metadata] Optional. Metadata describing the Model's input and output for explanation.
  /// [parameters] Parameters that configure explaining of the Model's predictions.
  GoogleCloudAiplatformV1ExplanationSpecResponse({
    required this.metadata,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': metadata.toMap(),
      'parameters': parameters.toMap(),
    };
  }

  factory GoogleCloudAiplatformV1ExplanationSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1ExplanationSpecResponse(
      metadata: GoogleCloudAiplatformV1ExplanationMetadataResponse.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      parameters: GoogleCloudAiplatformV1ExplanationParametersResponse.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

