import 'package:pulumi/pulumi.dart';
import '../ai_endpoint_deployed_model/ai_endpoint_deployed_model.dart';
import '../ai_endpoint_encryption_spec/ai_endpoint_encryption_spec.dart';
import '../ai_endpoint_predict_request_response_logging_config/ai_endpoint_predict_request_response_logging_config.dart';
import '../ai_endpoint_private_service_connect_config/ai_endpoint_private_service_connect_config.dart';
import 'ai_endpoint_args.dart';

/// Models are deployed into it, and afterwards Endpoint is called to obtain predictions and explanations.
///
///
/// To get more information about Endpoint, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.endpoints)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/vertex-ai/docs)
///
/// ## Example Usage
///
/// ### Vertex Ai Endpoint Network
///
///
///
/// ### Vertex Ai Endpoint Private Service Connect
///
///
///
/// ### Vertex Ai Endpoint Dedicated Endpoint
///
///
///
///
/// ## Import
///
/// Endpoint can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/endpoints/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Endpoint can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiEndpoint:AiEndpoint default projects/{{project}}/locations/{{location}}/endpoints/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiEndpoint:AiEndpoint default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vertex/aiEndpoint:AiEndpoint default {{location}}/{{name}}
/// ```
class AiEndpoint extends CustomResource {
  /// (Output)
  /// Output only. Timestamp when the DeployedModel was created.
  late final Output<String> createTime;

  /// Output only. DNS of the dedicated endpoint. Will only be populated if dedicatedEndpointEnabled is true. Format: `https://{endpointId}.{region}-{projectNumber}.prediction.vertexai.goog`.
  late final Output<String> dedicatedEndpointDns;

  /// If true, the endpoint will be exposed through a dedicated DNS [Endpoint.dedicated_endpoint_dns]. Your request to the dedicated DNS will be isolated from other users' traffic and will have better performance and reliability. Note: Once you enabled dedicated endpoint, you won't be able to send request to the shared DNS {region}-aiplatform.googleapis.com. The limitation will be removed soon.
  late final Output<bool?> dedicatedEndpointEnabled;

  /// Output only. The models deployed in this Endpoint. To add or remove DeployedModels use EndpointService.DeployModel and EndpointService.UndeployModel respectively. Models can also be deployed and undeployed using the [Cloud Console](https://console.cloud.google.com/vertex-ai/).
  /// Structure is documented below.
  late final Output<List<AiEndpointDeployedModel>> deployedModels;

  /// The description of the Endpoint.
  late final Output<String?> description;

  /// Required. The display name of the Endpoint. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  late final Output<String> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Customer-managed encryption key spec for an Endpoint. If set, this Endpoint and all sub-resources of this Endpoint will be secured by this key.
  /// Structure is documented below.
  late final Output<AiEndpointEncryptionSpec?> encryptionSpec;

  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  late final Output<String> etag;

  /// The labels with user-defined metadata to organize your Endpoints. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location for the resource
  late final Output<String> location;

  /// Output only. Resource name of the Model Monitoring job associated with this Endpoint if monitoring is enabled by CreateModelDeploymentMonitoringJob. Format: `projects/{project}/locations/{location}/modelDeploymentMonitoringJobs/{model_deployment_monitoring_job}`
  late final Output<String> modelDeploymentMonitoringJob;

  /// The resource name of the Endpoint. The name must be numeric with no leading zeros and can be at most 10 digits.
  late final Output<String> name;

  /// The full name of the Google Compute Engine [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks) to which the Endpoint should be peered. Private services access must already be configured for the network. If left unspecified, the Endpoint is not peered with any network. Only one of the fields, network or enable_private_service_connect, can be set. [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert): `projects/{project}/global/networks/{network}`. Where `{project}` is a project number, as in `12345`, and `{network}` is network name. Only one of the fields, `network` or `privateServiceConnectConfig`, can be set.
  late final Output<String?> network;

  /// Configures the request-response logging for online prediction.
  /// Structure is documented below.
  late final Output<AiEndpointPredictRequestResponseLoggingConfig?>
      predictRequestResponseLoggingConfig;

  /// Configuration for private service connect. `network` and `privateServiceConnectConfig` are mutually exclusive.
  /// Structure is documented below.
  late final Output<AiEndpointPrivateServiceConnectConfig?>
      privateServiceConnectConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The region for the resource
  late final Output<String?> region;

  /// A map from a DeployedModel's id to the percentage of this Endpoint's traffic that should be forwarded to that DeployedModel.
  /// If a DeployedModel's id is not listed in this map, then it receives no traffic.
  /// The traffic percentage values must add up to 100, or map must be empty if the Endpoint is to not accept any traffic at a moment. See
  /// the `deployModel` [example](https://cloud.google.com/vertex-ai/docs/general/deployment#deploy_a_model_to_an_endpoint) and
  /// [documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1beta1/projects.locations.endpoints/deployModel) for more information.
  /// > **Note:** To set the map to empty, set `"{}"`, apply, and then remove the field from your config.
  late final Output<String> trafficSplit;

  /// Output only. Timestamp when this Endpoint was last updated.
  late final Output<String> updateTime;

  AiEndpoint(
    String name, {
    AiEndpointArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiEndpoint:AiEndpoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.dedicatedEndpointDns = registerOutput<String>('dedicatedEndpointDns');
    this.dedicatedEndpointEnabled =
        registerOutput<bool?>('dedicatedEndpointEnabled');
    this.deployedModels =
        registerOutput<List<AiEndpointDeployedModel>>('deployedModels');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.encryptionSpec =
        registerOutput<AiEndpointEncryptionSpec?>('encryptionSpec');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.modelDeploymentMonitoringJob =
        registerOutput<String>('modelDeploymentMonitoringJob');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String?>('network');
    this.predictRequestResponseLoggingConfig =
        registerOutput<AiEndpointPredictRequestResponseLoggingConfig?>(
            'predictRequestResponseLoggingConfig');
    this.privateServiceConnectConfig =
        registerOutput<AiEndpointPrivateServiceConnectConfig?>(
            'privateServiceConnectConfig');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.region = registerOutput<String?>('region');
    this.trafficSplit = registerOutput<String>('trafficSplit');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
