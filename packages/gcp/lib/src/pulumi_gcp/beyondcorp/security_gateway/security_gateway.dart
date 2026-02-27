import 'package:pulumi/pulumi.dart' as pulumi;
import '../security_gateway_hub/security_gateway_hub.dart';
import '../security_gateway_proxy_protocol_config/security_gateway_proxy_protocol_config.dart';
import '../security_gateway_service_discovery/security_gateway_service_discovery.dart';
import 'security_gateway_args.dart';

/// Deployment of Security Gateway.
///
///
///
/// ## Example Usage
///
/// ### Beyondcorp Security Gateway Basic
///
///
///
/// ### Beyondcorp Security Gateway Spa
///
///
///
///
/// ## Import
///
/// SecurityGateway can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/securityGateways/{{security_gateway_id}}`
///
/// * `{{project}}/{{location}}/{{security_gateway_id}}`
///
/// * `{{location}}/{{security_gateway_id}}`
///
/// When using the `pulumi import` command, SecurityGateway can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/securityGateway:SecurityGateway default projects/{{project}}/locations/{{location}}/securityGateways/{{security_gateway_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/securityGateway:SecurityGateway default {{project}}/{{location}}/{{security_gateway_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/securityGateway:SecurityGateway default {{location}}/{{security_gateway_id}}
/// ```
class SecurityGateway extends pulumi.CustomResource {
  /// Output only. Timestamp when the resource was created.
  late final pulumi.Output<String> createTime;

  /// Service account used for operations that involve resources in consumer projects.
  late final pulumi.Output<String> delegatingServiceAccount;

  /// Optional. An arbitrary user-provided name for the SecurityGateway.
  /// Cannot exceed 64 characters.
  late final pulumi.Output<String?> displayName;

  /// Output only. IP addresses that will be used for establishing
  /// connection to the endpoints.
  late final pulumi.Output<List<String>> externalIps;

  /// Optional. Map of Hubs that represents regional data path deployment with GCP region
  /// as a key.
  /// Structure is documented below.
  late final pulumi.Output<List<SecurityGatewayHub>?> hubs;

  /// (Optional, Deprecated)
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. Must be omitted or set to `global`.
  ///
  /// > **Warning:** `location` is deprecated and will be removed in a future major release.
  late final pulumi.Output<String?> location;

  /// Identifier. Name of the resource.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Shared proxy configuration for all apps.
  /// Structure is documented below.
  late final pulumi.Output<SecurityGatewayProxyProtocolConfig?>
      proxyProtocolConfig;

  /// Optional. User-settable SecurityGateway resource ID.
  /// * Must start with a letter.
  /// * Must contain between 4-63 characters from `/a-z-/`.
  /// * Must end with a number or letter.
  late final pulumi.Output<String> securityGatewayId;

  /// Settings related to the Service Discovery.
  /// Structure is documented below.
  late final pulumi.Output<SecurityGatewayServiceDiscovery?> serviceDiscovery;

  /// Output only. The operational state of the SecurityGateway.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// CREATING
  /// UPDATING
  /// DELETING
  /// RUNNING
  /// DOWN
  /// ERROR
  late final pulumi.Output<String> state;

  /// Output only. Timestamp when the resource was last modified.
  late final pulumi.Output<String> updateTime;

  SecurityGateway(
    String name, {
    SecurityGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:beyondcorp/securityGateway:SecurityGateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.delegatingServiceAccount =
        registerOutput<String>('delegatingServiceAccount');
    this.displayName = registerOutput<String?>('displayName');
    this.externalIps = registerOutput<List<String>>('externalIps');
    this.hubs = registerOutput<List<SecurityGatewayHub>?>('hubs');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.proxyProtocolConfig =
        registerOutput<SecurityGatewayProxyProtocolConfig?>(
            'proxyProtocolConfig');
    this.securityGatewayId = registerOutput<String>('securityGatewayId');
    this.serviceDiscovery =
        registerOutput<SecurityGatewayServiceDiscovery?>('serviceDiscovery');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
