import 'package:pulumi/pulumi.dart';
import 'environment_args.dart';
import 'google_cloud_apigee_v1_node_config_response.dart';
import 'google_cloud_apigee_v1_properties_response.dart';

/// Creates an environment in an organization.
class Environment4 extends CustomResource {
  /// Optional. API Proxy type supported by the environment. The type can be set when creating the Environment and cannot be changed.
  late final Output<String> apiProxyType;

  /// Creation time of this environment as milliseconds since epoch.
  late final Output<String> createdAt;

  /// Optional. Deployment type supported by the environment. The deployment type can be set when creating the environment and cannot be changed. When you enable archive deployment, you will be **prevented from performing** a [subset of actions](/apigee/docs/api-platform/local-development/overview#prevented-actions) within the environment, including: * Managing the deployment of API proxy or shared flow revisions * Creating, updating, or deleting resource files * Creating, updating, or deleting target servers
  late final Output<String> deploymentType;

  /// Optional. Description of the environment.
  late final Output<String> description;

  /// Optional. Display name for this environment.
  late final Output<String> displayName;

  /// Optional. Url of the forward proxy to be applied to the runtime instances in this environment. Must be in the format of {scheme}://{hostname}:{port}. Note that scheme must be one of "http" or "https", and port must be supplied.
  late final Output<String> forwardProxyUri;
  late final Output<bool> hasAttachedFlowHooks;

  /// Last modification time of this environment as milliseconds since epoch.
  late final Output<String> lastModifiedAt;

  /// Optional. Name of the environment.
  late final Output<String> name;

  /// Optional. NodeConfig of the environment.
  late final Output<GoogleCloudApigeeV1NodeConfigResponse> nodeConfig;
  late final Output<String> organizationId;

  /// Optional. Key-value pairs that may be used for customizing the environment.
  late final Output<GoogleCloudApigeeV1PropertiesResponse> properties;

  /// State of the environment. Values other than ACTIVE means the resource is not ready to use.
  late final Output<String> state;

  /// Optional. EnvironmentType selected for the environment.
  late final Output<String> type;

  Environment4(
    String name, {
    EnvironmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:Environment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiProxyType = Output.createUnknown<String>();
    this.createdAt = Output.createUnknown<String>();
    this.deploymentType = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.forwardProxyUri = Output.createUnknown<String>();
    this.hasAttachedFlowHooks = Output.createUnknown<bool>();
    this.lastModifiedAt = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.nodeConfig =
        Output.createUnknown<GoogleCloudApigeeV1NodeConfigResponse>();
    this.organizationId = Output.createUnknown<String>();
    this.properties =
        Output.createUnknown<GoogleCloudApigeeV1PropertiesResponse>();
    this.state = Output.createUnknown<String>();
    this.type = Output.createUnknown<String>();
  }
}
