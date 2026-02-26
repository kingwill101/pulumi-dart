import 'package:pulumi/pulumi.dart';
import 'endpoint_args2.dart';
import 'google_cloud_aiplatform_v1beta1_deployed_model_response.dart';
import 'google_cloud_aiplatform_v1beta1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_predict_request_response_logging_config_response.dart';

/// Creates an Endpoint.
/// Auto-naming is currently not supported for this resource.
class Endpoint5 extends CustomResource {
  /// Timestamp when this Endpoint was created.
  late final Output<String> createTime;

  /// The models deployed in this Endpoint. To add or remove DeployedModels use EndpointService.DeployModel and EndpointService.UndeployModel respectively.
  late final Output<List<GoogleCloudAiplatformV1beta1DeployedModelResponse>>
      deployedModels;

  /// The description of the Endpoint.
  late final Output<String> description;

  /// The display name of the Endpoint. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  late final Output<String> displayName;

  /// Deprecated: If true, expose the Endpoint via private service connect. Only one of the fields, network or enable_private_service_connect, can be set.
  late final Output<bool> enablePrivateServiceConnect;

  /// Customer-managed encryption key spec for an Endpoint. If set, this Endpoint and all sub-resources of this Endpoint will be secured by this key.
  late final Output<GoogleCloudAiplatformV1beta1EncryptionSpecResponse>
      encryptionSpec;

  /// Immutable. The ID to use for endpoint, which will become the final component of the endpoint resource name. If not provided, Vertex AI will generate a value for this ID. If the first character is a letter, this value may be up to 63 characters, and valid characters are `[a-z0-9-]`. The last character must be a letter or number. If the first character is a number, this value may be up to 9 characters, and valid characters are `[0-9]` with no leading zeros. When using HTTP/JSON, this field is populated based on a query string argument, such as `?endpoint_id=12345`. This is the fallback for fields that are not included in either the URI or the body.
  late final Output<String?> endpointId;

  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  late final Output<String> etag;

  /// The labels with user-defined metadata to organize your Endpoints. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Resource name of the Model Monitoring job associated with this Endpoint if monitoring is enabled by JobService.CreateModelDeploymentMonitoringJob. Format: `projects/{project}/locations/{location}/modelDeploymentMonitoringJobs/{model_deployment_monitoring_job}`
  late final Output<String> modelDeploymentMonitoringJob;

  /// The resource name of the Endpoint.
  late final Output<String> name;

  /// Optional. The full name of the Google Compute Engine [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks) to which the Endpoint should be peered. Private services access must already be configured for the network. If left unspecified, the Endpoint is not peered with any network. Only one of the fields, network or enable_private_service_connect, can be set. [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert): `projects/{project}/global/networks/{network}`. Where `{project}` is a project number, as in `12345`, and `{network}` is network name.
  late final Output<String> network;

  /// Configures the request-response logging for online prediction.
  late final Output<
          GoogleCloudAiplatformV1beta1PredictRequestResponseLoggingConfigResponse>
      predictRequestResponseLoggingConfig;
  late final Output<String> project;

  /// A map from a DeployedModel's ID to the percentage of this Endpoint's traffic that should be forwarded to that DeployedModel. If a DeployedModel's ID is not listed in this map, then it receives no traffic. The traffic percentage values must add up to 100, or map must be empty if the Endpoint is to not accept any traffic at a moment.
  late final Output<Map<String, String>> trafficSplit;

  /// Timestamp when this Endpoint was last updated.
  late final Output<String> updateTime;

  Endpoint5(
    String name, {
    EndpointArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1beta1:Endpoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.deployedModels = Output.createUnknown<
        List<GoogleCloudAiplatformV1beta1DeployedModelResponse>>();
    this.description = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.enablePrivateServiceConnect = Output.createUnknown<bool>();
    this.encryptionSpec = Output.createUnknown<
        GoogleCloudAiplatformV1beta1EncryptionSpecResponse>();
    this.endpointId = Output.createUnknown<String?>();
    this.etag = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.modelDeploymentMonitoringJob = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.network = Output.createUnknown<String>();
    this.predictRequestResponseLoggingConfig = Output.createUnknown<
        GoogleCloudAiplatformV1beta1PredictRequestResponseLoggingConfigResponse>();
    this.project = Output.createUnknown<String>();
    this.trafficSplit = Output.createUnknown<Map<String, String>>();
    this.updateTime = Output.createUnknown<String>();
  }
}
