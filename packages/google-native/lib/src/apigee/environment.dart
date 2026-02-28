import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_args.dart';
import 'google_cloud_apigee_v1_node_config_response.dart';
import 'google_cloud_apigee_v1_properties_response.dart';

/// Creates an environment in an organization.
class Environment extends pulumi.CustomResource {
  /// Optional. API Proxy type supported by the environment. The type can be set when creating the Environment and cannot be changed.
  late final pulumi.Output<String> apiProxyType;

  /// Creation time of this environment as milliseconds since epoch.
  late final pulumi.Output<String> createdAt;

  /// Optional. Deployment type supported by the environment. The deployment type can be set when creating the environment and cannot be changed. When you enable archive deployment, you will be **prevented from performing** a [subset of actions](/apigee/docs/api-platform/local-development/overview#prevented-actions) within the environment, including: * Managing the deployment of API proxy or shared flow revisions * Creating, updating, or deleting resource files * Creating, updating, or deleting target servers
  late final pulumi.Output<String> deploymentType;

  /// Optional. Description of the environment.
  late final pulumi.Output<String> description;

  /// Optional. Display name for this environment.
  late final pulumi.Output<String> displayName;

  /// Optional. Url of the forward proxy to be applied to the runtime instances in this environment. Must be in the format of {scheme}://{hostname}:{port}. Note that scheme must be one of "http" or "https", and port must be supplied.
  late final pulumi.Output<String> forwardProxyUri;
  late final pulumi.Output<bool> hasAttachedFlowHooks;

  /// Last modification time of this environment as milliseconds since epoch.
  late final pulumi.Output<String> lastModifiedAt;

  /// Optional. Name of the environment.
  late final pulumi.Output<String> name;

  /// Optional. NodeConfig of the environment.
  late final pulumi.Output<GoogleCloudApigeeV1NodeConfigResponse> nodeConfig;
  late final pulumi.Output<String> organizationId;

  /// Optional. Key-value pairs that may be used for customizing the environment.
  late final pulumi.Output<GoogleCloudApigeeV1PropertiesResponse> properties;

  /// State of the environment. Values other than ACTIVE means the resource is not ready to use.
  late final pulumi.Output<String> state;

  /// Optional. EnvironmentType selected for the environment.
  late final pulumi.Output<String> type;

  /// Creates a new [Environment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Environment]. {@macro pulumi_apigee_v1_environment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Environment(
    String name, {
    EnvironmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:Environment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiProxyType = registerOutput<String>('apiProxyType');
    this.createdAt = registerOutput<String>('createdAt');
    this.deploymentType = registerOutput<String>('deploymentType');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.forwardProxyUri = registerOutput<String>('forwardProxyUri');
    this.hasAttachedFlowHooks = registerOutput<bool>('hasAttachedFlowHooks');
    this.lastModifiedAt = registerOutput<String>('lastModifiedAt');
    this.name = registerOutput<String>('name');
    this.nodeConfig =
        registerOutput<GoogleCloudApigeeV1NodeConfigResponse>('nodeConfig');
    this.organizationId = registerOutput<String>('organizationId');
    this.properties =
        registerOutput<GoogleCloudApigeeV1PropertiesResponse>('properties');
    this.state = registerOutput<String>('state');
    this.type = registerOutput<String>('type');
  }
}
