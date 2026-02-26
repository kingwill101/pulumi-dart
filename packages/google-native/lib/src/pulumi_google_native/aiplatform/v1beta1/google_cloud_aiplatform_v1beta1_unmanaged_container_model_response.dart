// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_model_container_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_predict_schemata_response.dart';

/// Contains model information necessary to perform batch prediction without requiring a full model import.
class GoogleCloudAiplatformV1beta1UnmanagedContainerModelResponse {
  /// The path to the directory containing the Model artifact and any of its supporting files.
  final String artifactUri;

  /// Input only. The specification of the container that is to be used when deploying this Model.
  final GoogleCloudAiplatformV1beta1ModelContainerSpecResponse containerSpec;

  /// Contains the schemata used in Model's predictions and explanations
  final GoogleCloudAiplatformV1beta1PredictSchemataResponse predictSchemata;

  GoogleCloudAiplatformV1beta1UnmanagedContainerModelResponse({
    required this.artifactUri,
    required this.containerSpec,
    required this.predictSchemata,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['artifactUri'] = artifactUri;
    map['containerSpec'] = containerSpec.toMap();
    map['predictSchemata'] = predictSchemata.toMap();
    return map;
  }

  factory GoogleCloudAiplatformV1beta1UnmanagedContainerModelResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1UnmanagedContainerModelResponse(
      artifactUri: map['artifactUri'] as String,
      containerSpec:
          GoogleCloudAiplatformV1beta1ModelContainerSpecResponse.fromMap(
              (map['containerSpec'] as Map).cast<String, dynamic>()),
      predictSchemata:
          GoogleCloudAiplatformV1beta1PredictSchemataResponse.fromMap(
              (map['predictSchemata'] as Map).cast<String, dynamic>()),
    );
  }
}
