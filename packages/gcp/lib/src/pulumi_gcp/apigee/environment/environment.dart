import 'package:pulumi/pulumi.dart' as pulumi;
import '../environment_client_ip_resolution_config/environment_client_ip_resolution_config.dart';
import '../environment_node_config/environment_node_config.dart';
import '../environment_properties/environment_properties.dart';
import 'environment_args.dart';

/// An `Environment` in Apigee.
///
///
/// To get more information about Environment, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.environments/create)
/// * How-to Guides
/// * [Creating an environment](https://cloud.google.com/apigee/docs/api-platform/get-started/create-environment)
///
/// ## Example Usage
///
/// ### Apigee Environment Basic
///
///
///
///
/// ## Import
///
/// Environment can be imported using any of these accepted formats:
///
/// * `{{org_id}}/environments/{{name}}`
///
/// * `{{org_id}}/{{name}}`
///
/// When using the `pulumi import` command, Environment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/environment:Environment default {{org_id}}/environments/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/environment:Environment default {{org_id}}/{{name}}
/// ```
class Environment extends pulumi.CustomResource {
  /// Optional. API Proxy type supported by the environment. The type can be set when creating
  /// the Environment and cannot be changed.
  /// Possible values are: `API_PROXY_TYPE_UNSPECIFIED`, `PROGRAMMABLE`, `CONFIGURABLE`.
  late final pulumi.Output<String> apiProxyType;

  /// The algorithm to resolve IP. This will affect Analytics, API Security, and other features that use the client ip. To remove a client ip resolution config, update the field to an empty value. Example: '{ "clientIpResolutionConfig" = {} }' For more information, see: https://cloud.google.com/apigee/docs/api-platform/system-administration/client-ip-resolution
  /// Structure is documented below.
  late final pulumi.Output<EnvironmentClientIpResolutionConfig?>
      clientIpResolutionConfig;

  /// Optional. Deployment type supported by the environment. The deployment type can be
  /// set when creating the environment and cannot be changed. When you enable archive
  /// deployment, you will be prevented from performing a subset of actions within the
  /// environment, including:
  /// Managing the deployment of API proxy or shared flow revisions;
  /// Creating, updating, or deleting resource files;
  /// Creating, updating, or deleting target servers.
  /// Possible values are: `DEPLOYMENT_TYPE_UNSPECIFIED`, `PROXY`, `ARCHIVE`.
  late final pulumi.Output<String> deploymentType;

  /// Description of the environment.
  late final pulumi.Output<String?> description;

  /// Display name of the environment.
  late final pulumi.Output<String?> displayName;

  /// Optional. URI of the forward proxy to be applied to the runtime instances in this environment. Must be in the format of {scheme}://{hostname}:{port}. Note that the scheme must be one of "http" or "https", and the port must be supplied.
  late final pulumi.Output<String?> forwardProxyUri;

  /// The resource ID of the environment.
  late final pulumi.Output<String> name;

  /// NodeConfig for setting the min/max number of nodes associated with the environment.
  /// Structure is documented below.
  late final pulumi.Output<EnvironmentNodeConfig> nodeConfig;

  /// The Apigee Organization associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}`.
  late final pulumi.Output<String> orgId;

  /// Key-value pairs that may be used for customizing the environment.
  /// Structure is documented below.
  late final pulumi.Output<EnvironmentProperties?> properties;

  /// Types that can be selected for an Environment. Each of the types are
  /// limited by capability and capacity. Refer to Apigee's public documentation
  /// to understand about each of these types in details.
  /// An Apigee org can support heterogeneous Environments.
  /// Possible values are: `ENVIRONMENT_TYPE_UNSPECIFIED`, `BASE`, `INTERMEDIATE`, `COMPREHENSIVE`.
  late final pulumi.Output<String> type;

  Environment(
    String name, {
    EnvironmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/environment:Environment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiProxyType = registerOutput<String>('apiProxyType');
    this.clientIpResolutionConfig =
        registerOutput<EnvironmentClientIpResolutionConfig?>(
            'clientIpResolutionConfig');
    this.deploymentType = registerOutput<String>('deploymentType');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.forwardProxyUri = registerOutput<String?>('forwardProxyUri');
    this.name = registerOutput<String>('name');
    this.nodeConfig = registerOutput<EnvironmentNodeConfig>('nodeConfig');
    this.orgId = registerOutput<String>('orgId');
    this.properties = registerOutput<EnvironmentProperties?>('properties');
    this.type = registerOutput<String>('type');
  }
}
