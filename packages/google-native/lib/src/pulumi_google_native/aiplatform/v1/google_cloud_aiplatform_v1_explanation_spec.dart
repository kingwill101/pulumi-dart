// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_explanation_metadata.dart';
import 'google_cloud_aiplatform_v1_explanation_parameters.dart';

/// Specification of Model explanation.
class GoogleCloudAiplatformV1ExplanationSpec {
  /// Optional. Metadata describing the Model's input and output for explanation.
  final GoogleCloudAiplatformV1ExplanationMetadata? metadata;

  /// Parameters that configure explaining of the Model's predictions.
  final GoogleCloudAiplatformV1ExplanationParameters parameters;

  GoogleCloudAiplatformV1ExplanationSpec({
    this.metadata,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final metadataValue = metadata;
    if (metadataValue != null) {
      map['metadata'] = metadataValue.toMap();
    }
    map['parameters'] = parameters.toMap();
    return map;
  }

  factory GoogleCloudAiplatformV1ExplanationSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1ExplanationSpec(
      metadata: map['metadata'] == null
          ? null
          : GoogleCloudAiplatformV1ExplanationMetadata.fromMap(
              (map['metadata'] as Map).cast<String, dynamic>()),
      parameters: GoogleCloudAiplatformV1ExplanationParameters.fromMap(
          (map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}
