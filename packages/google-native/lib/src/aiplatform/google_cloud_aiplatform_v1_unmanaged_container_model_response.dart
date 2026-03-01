// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_model_container_spec_response.dart';
import 'google_cloud_aiplatform_v1_predict_schemata_response.dart';

/// Contains model information necessary to perform batch prediction without requiring a full model import.
class GoogleCloudAiplatformV1UnmanagedContainerModelResponse {
  /// The path to the directory containing the Model artifact and any of its supporting files.
  final String artifactUri;

  /// Input only. The specification of the container that is to be used when deploying this Model.
  final GoogleCloudAiplatformV1ModelContainerSpecResponse containerSpec;

  /// Contains the schemata used in Model's predictions and explanations
  final GoogleCloudAiplatformV1PredictSchemataResponse predictSchemata;

  /// Creates a new [GoogleCloudAiplatformV1UnmanagedContainerModelResponse].
  /// [artifactUri] The path to the directory containing the Model artifact and any of its supporting files.
  /// [containerSpec] Input only. The specification of the container that is to be used when deploying this Model.
  /// [predictSchemata] Contains the schemata used in Model's predictions and explanations
  GoogleCloudAiplatformV1UnmanagedContainerModelResponse({
    required this.artifactUri,
    required this.containerSpec,
    required this.predictSchemata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactUri': artifactUri,
      'containerSpec': containerSpec.toMap(),
      'predictSchemata': predictSchemata.toMap(),
    };
  }

  factory GoogleCloudAiplatformV1UnmanagedContainerModelResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1UnmanagedContainerModelResponse(
      artifactUri: map['artifactUri'] as String,
      containerSpec: GoogleCloudAiplatformV1ModelContainerSpecResponse.fromMap(
        (map['containerSpec'] as Map).cast<String, dynamic>(),
      ),
      predictSchemata: GoogleCloudAiplatformV1PredictSchemataResponse.fromMap(
        (map['predictSchemata'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
