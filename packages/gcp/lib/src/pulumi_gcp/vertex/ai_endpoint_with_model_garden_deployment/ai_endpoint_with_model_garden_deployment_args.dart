// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../ai_endpoint_with_model_garden_deployment_deploy_config/ai_endpoint_with_model_garden_deployment_deploy_config.dart';
import '../ai_endpoint_with_model_garden_deployment_endpoint_config/ai_endpoint_with_model_garden_deployment_endpoint_config.dart';
import '../ai_endpoint_with_model_garden_deployment_model_config/ai_endpoint_with_model_garden_deployment_model_config.dart';

/// The set of arguments for AiEndpointWithModelGardenDeployment.
class AiEndpointWithModelGardenDeploymentArgs {
  /// The deploy config to use for the deployment.
  /// Structure is documented below.
  final Input<AiEndpointWithModelGardenDeploymentDeployConfig>? deployConfig;

  /// The endpoint config to use for the deployment.
  /// Structure is documented below.
  final Input<AiEndpointWithModelGardenDeploymentEndpointConfig>?
      endpointConfig;

  /// The Hugging Face model to deploy.
  /// Format: Hugging Face model ID like `google/gemma-2-2b-it`.
  final Input<String>? huggingFaceModelId;

  /// Resource ID segment making up resource `location`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> location;

  /// The model config to use for the deployment.
  /// Structure is documented below.
  final Input<AiEndpointWithModelGardenDeploymentModelConfig>? modelConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The Model Garden model to deploy.
  /// Format:
  /// `publishers/{publisher}/models/{publisher_model}@{version_id}`, or
  /// `publishers/hf-{hugging-face-author}/models/{hugging-face-model-name}@001`.
  final Input<String>? publisherModelName;

  AiEndpointWithModelGardenDeploymentArgs({
    this.deployConfig,
    this.endpointConfig,
    this.huggingFaceModelId,
    required this.location,
    this.modelConfig,
    this.project,
    this.publisherModelName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deployConfigValue = deployConfig;
    if (deployConfigValue != null) {
      map['deployConfig'] = Input.mapOptionalInputValue<
          AiEndpointWithModelGardenDeploymentDeployConfig,
          Map<String, dynamic>>(deployConfigValue, (value) => value.toMap());
    }
    final endpointConfigValue = endpointConfig;
    if (endpointConfigValue != null) {
      map['endpointConfig'] = Input.mapOptionalInputValue<
          AiEndpointWithModelGardenDeploymentEndpointConfig,
          Map<String, dynamic>>(endpointConfigValue, (value) => value.toMap());
    }
    final huggingFaceModelIdValue = huggingFaceModelId;
    if (huggingFaceModelIdValue != null) {
      map['huggingFaceModelId'] = huggingFaceModelIdValue;
    }
    map['location'] = location;
    final modelConfigValue = modelConfig;
    if (modelConfigValue != null) {
      map['modelConfig'] = Input.mapOptionalInputValue<
          AiEndpointWithModelGardenDeploymentModelConfig,
          Map<String, dynamic>>(modelConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final publisherModelNameValue = publisherModelName;
    if (publisherModelNameValue != null) {
      map['publisherModelName'] = publisherModelNameValue;
    }
    return map;
  }

  factory AiEndpointWithModelGardenDeploymentArgs.fromMap(
      Map<String, dynamic> map) {
    return AiEndpointWithModelGardenDeploymentArgs(
      deployConfig: Input.asOptionalInput<
          AiEndpointWithModelGardenDeploymentDeployConfig>(map['deployConfig']),
      endpointConfig: Input.asOptionalInput<
              AiEndpointWithModelGardenDeploymentEndpointConfig>(
          map['endpointConfig']),
      huggingFaceModelId:
          Input.asOptionalInput<String>(map['huggingFaceModelId']),
      location: Input.asInput<String>(map['location']),
      modelConfig:
          Input.asOptionalInput<AiEndpointWithModelGardenDeploymentModelConfig>(
              map['modelConfig']),
      project: Input.asOptionalInput<String>(map['project']),
      publisherModelName:
          Input.asOptionalInput<String>(map['publisherModelName']),
    );
  }
}
