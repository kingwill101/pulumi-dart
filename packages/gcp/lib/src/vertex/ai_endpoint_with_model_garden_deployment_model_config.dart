// ignore_for_file: unused_element, unnecessary_cast

import 'ai_endpoint_with_model_garden_deployment_model_config_container_spec.dart';

class AiEndpointWithModelGardenDeploymentModelConfig {
  /// Whether the user accepts the End User License Agreement (EULA)
  /// for the model.
  final bool? acceptEula;

  /// Specification of a container for serving predictions. Some fields in this
  /// message correspond to fields in the [Kubernetes Container v1 core
  /// specification](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#container-v1-core).
  /// Structure is documented below.
  final AiEndpointWithModelGardenDeploymentModelConfigContainerSpec?
  containerSpec;

  /// The Hugging Face read access token used to access the model
  /// artifacts of gated models.
  final String? huggingFaceAccessToken;

  /// If true, the model will deploy with a cached version instead of directly
  /// downloading the model artifacts from Hugging Face. This is suitable for
  /// VPC-SC users with limited internet access.
  final bool? huggingFaceCacheEnabled;

  /// The user-specified display name of the uploaded model. If not
  /// set, a default name will be used.
  final String? modelDisplayName;

  /// Creates a new [AiEndpointWithModelGardenDeploymentModelConfig].
  /// [acceptEula] Whether the user accepts the End User License Agreement (EULA)
  /// [containerSpec] Specification of a container for serving predictions. Some fields in this
  /// [huggingFaceAccessToken] The Hugging Face read access token used to access the model
  /// [huggingFaceCacheEnabled] If true, the model will deploy with a cached version instead of directly
  /// [modelDisplayName] The user-specified display name of the uploaded model. If not
  AiEndpointWithModelGardenDeploymentModelConfig({
    this.acceptEula,
    this.containerSpec,
    this.huggingFaceAccessToken,
    this.huggingFaceCacheEnabled,
    this.modelDisplayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptEula': ?acceptEula,
      'containerSpec': ?containerSpec == null ? null : containerSpec!.toMap(),
      'huggingFaceAccessToken': ?huggingFaceAccessToken,
      'huggingFaceCacheEnabled': ?huggingFaceCacheEnabled,
      'modelDisplayName': ?modelDisplayName,
    };
  }

  factory AiEndpointWithModelGardenDeploymentModelConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return AiEndpointWithModelGardenDeploymentModelConfig(
      acceptEula: map['acceptEula'] == null ? null : map['acceptEula'] as bool,
      containerSpec: map['containerSpec'] == null
          ? null
          : AiEndpointWithModelGardenDeploymentModelConfigContainerSpec.fromMap(
              (map['containerSpec'] as Map).cast<String, dynamic>(),
            ),
      huggingFaceAccessToken: map['huggingFaceAccessToken'] == null
          ? null
          : map['huggingFaceAccessToken'] as String,
      huggingFaceCacheEnabled: map['huggingFaceCacheEnabled'] == null
          ? null
          : map['huggingFaceCacheEnabled'] as bool,
      modelDisplayName: map['modelDisplayName'] == null
          ? null
          : map['modelDisplayName'] as String,
    );
  }
}
