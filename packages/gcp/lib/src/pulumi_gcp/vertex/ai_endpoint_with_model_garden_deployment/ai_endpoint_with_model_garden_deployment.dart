import 'package:pulumi/pulumi.dart';
import '../ai_endpoint_with_model_garden_deployment_deploy_config/ai_endpoint_with_model_garden_deployment_deploy_config.dart';
import '../ai_endpoint_with_model_garden_deployment_endpoint_config/ai_endpoint_with_model_garden_deployment_endpoint_config.dart';
import '../ai_endpoint_with_model_garden_deployment_model_config/ai_endpoint_with_model_garden_deployment_model_config.dart';
import 'ai_endpoint_with_model_garden_deployment_args.dart';

/// Create an Endpoint and deploy a Model Garden model to it.
///
///
/// To get more information about EndpointWithModelGardenDeployment, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations/deploy)
/// * How-to Guides
/// * [Overview of Model Garden](https://cloud.google.com/vertex-ai/generative-ai/docs/model-garden/explore-models)
/// * [Overview of self-deployed models](https://cloud.google.com/vertex-ai/generative-ai/docs/model-garden/self-deployed-models)
/// * [Use models in Model Garden](https://cloud.google.com/vertex-ai/generative-ai/docs/model-garden/use-models)
///
/// ## Example Usage
///
/// ### Vertex Ai Deploy Basic
///
///
///
/// ### Vertex Ai Deploy Huggingface Model
///
///
///
/// ### Vertex Ai Deploy With Configs
///
///
///
/// ### Vertex Ai Deploy Multiple Models In Parallel
///
///
///
/// ### Vertex Ai Deploy Multiple Models In Sequence
///
///
///
/// ### Vertex Ai Deploy Psc Endpoint
///
///
///
/// ### Vertex Ai Deploy Psc Endpoint Automated
///
///
///
///
/// ## Import
///
/// This resource does not support import.
class AiEndpointWithModelGardenDeployment extends CustomResource {
  /// The deploy config to use for the deployment.
  /// Structure is documented below.
  late final Output<AiEndpointWithModelGardenDeploymentDeployConfig?>
      deployConfig;

  /// Output only. The display name assigned to the model deployed to the endpoint.
  /// This is not required to delete the resource but is used for debug logging.
  late final Output<String> deployedModelDisplayName;

  /// Output only. The unique numeric ID that Vertex AI assigns to the model at the time it is deployed to the endpoint.
  /// It is required to undeploy the model from the endpoint during resource deletion as described in
  /// https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.endpoints/undeployModel.
  late final Output<String> deployedModelId;

  /// Resource ID segment making up resource `endpoint`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> endpoint;

  /// The endpoint config to use for the deployment.
  /// Structure is documented below.
  late final Output<AiEndpointWithModelGardenDeploymentEndpointConfig?>
      endpointConfig;

  /// The Hugging Face model to deploy.
  /// Format: Hugging Face model ID like `google/gemma-2-2b-it`.
  late final Output<String?> huggingFaceModelId;

  /// Resource ID segment making up resource `location`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> location;

  /// The model config to use for the deployment.
  /// Structure is documented below.
  late final Output<AiEndpointWithModelGardenDeploymentModelConfig?>
      modelConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The Model Garden model to deploy.
  /// Format:
  /// `publishers/{publisher}/models/{publisher_model}@{version_id}`, or
  /// `publishers/hf-{hugging-face-author}/models/{hugging-face-model-name}@001`.
  late final Output<String?> publisherModelName;

  AiEndpointWithModelGardenDeployment(
    String name, {
    AiEndpointWithModelGardenDeploymentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiEndpointWithModelGardenDeployment:AiEndpointWithModelGardenDeployment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.deployConfig =
        registerOutput<AiEndpointWithModelGardenDeploymentDeployConfig?>(
            'deployConfig');
    this.deployedModelDisplayName =
        registerOutput<String>('deployedModelDisplayName');
    this.deployedModelId = registerOutput<String>('deployedModelId');
    this.endpoint = registerOutput<String>('endpoint');
    this.endpointConfig =
        registerOutput<AiEndpointWithModelGardenDeploymentEndpointConfig?>(
            'endpointConfig');
    this.huggingFaceModelId = registerOutput<String?>('huggingFaceModelId');
    this.location = registerOutput<String>('location');
    this.modelConfig =
        registerOutput<AiEndpointWithModelGardenDeploymentModelConfig?>(
            'modelConfig');
    this.project = registerOutput<String>('project');
    this.publisherModelName = registerOutput<String?>('publisherModelName');
  }
}
