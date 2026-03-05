import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_args.dart';
import 'application_gateway_autoscale_configuration_response.dart';
import 'application_gateway_global_configuration_response.dart';
import 'application_gateway_sku_response.dart';
import 'application_gateway_ssl_policy_response.dart';
import 'application_gateway_web_application_firewall_configuration_response.dart';
import 'managed_service_identity_response.dart';
import 'sub_resource_response.dart';

/// Application gateway resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:network:ApplicationGateway appgw /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/applicationGateways/{applicationGatewayName}
/// ```
class ApplicationGateway extends pulumi.CustomResource {
  /// Authentication certificates of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  late final pulumi.Output<List<Map<String, dynamic>>?> authenticationCertificates;
  /// Autoscale Configuration.
  late final pulumi.Output<ApplicationGatewayAutoscaleConfigurationResponse?> autoscaleConfiguration;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Backend address pool of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  late final pulumi.Output<List<Map<String, dynamic>>?> backendAddressPools;
  /// Backend http settings of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  late final pulumi.Output<List<Map<String, dynamic>>?> backendHttpSettingsCollection;
  /// Backend settings of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  late final pulumi.Output<List<Map<String, dynamic>>?> backendSettingsCollection;
  /// Custom error configurations of the application gateway resource.
  late final pulumi.Output<List<Map<String, dynamic>>?> customErrorConfigurations;
  /// The default predefined SSL Policy applied on the application gateway resource.
  late final pulumi.Output<String> defaultPredefinedSslPolicy;
  /// Whether FIPS is enabled on the application gateway resource.
  late final pulumi.Output<bool?> enableFips;
  /// Whether HTTP2 is enabled on the application gateway resource.
  late final pulumi.Output<bool?> enableHttp2;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// Reference to the FirewallPolicy resource.
  late final pulumi.Output<SubResourceResponse?> firewallPolicy;
  /// If true, associates a firewall policy with an application gateway regardless whether the policy differs from the WAF Config.
  late final pulumi.Output<bool?> forceFirewallPolicyAssociation;
  /// Frontend IP addresses of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  late final pulumi.Output<List<Map<String, dynamic>>?> frontendIPConfigurations;
  /// Frontend ports of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  late final pulumi.Output<List<Map<String, dynamic>>?> frontendPorts;
  /// Subnets of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  late final pulumi.Output<List<Map<String, dynamic>>?> gatewayIPConfigurations;
  /// Global Configuration.
  late final pulumi.Output<ApplicationGatewayGlobalConfigurationResponse?> globalConfiguration;
  /// Http listeners of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  late final pulumi.Output<List<Map<String, dynamic>>?> httpListeners;
  /// The identity of the application gateway, if configured.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// Listeners of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  late final pulumi.Output<List<Map<String, dynamic>>?> listeners;
  /// Load distribution policies of the application gateway resource.
  late final pulumi.Output<List<Map<String, dynamic>>?> loadDistributionPolicies;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Operational state of the application gateway resource.
  late final pulumi.Output<String> operationalState;
  /// Private Endpoint connections on application gateway.
  late final pulumi.Output<List<Map<String, dynamic>>> privateEndpointConnections;
  /// PrivateLink configurations on application gateway.
  late final pulumi.Output<List<Map<String, dynamic>>?> privateLinkConfigurations;
  /// Probes of the application gateway resource.
  late final pulumi.Output<List<Map<String, dynamic>>?> probes;
  /// The provisioning state of the application gateway resource.
  late final pulumi.Output<String> provisioningState;
  /// Redirect configurations of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  late final pulumi.Output<List<Map<String, dynamic>>?> redirectConfigurations;
  /// Request routing rules of the application gateway resource.
  late final pulumi.Output<List<Map<String, dynamic>>?> requestRoutingRules;
  /// The resource GUID property of the application gateway resource.
  late final pulumi.Output<String> resourceGuid;
  /// Rewrite rules for the application gateway resource.
  late final pulumi.Output<List<Map<String, dynamic>>?> rewriteRuleSets;
  /// Routing rules of the application gateway resource.
  late final pulumi.Output<List<Map<String, dynamic>>?> routingRules;
  /// SKU of the application gateway resource.
  late final pulumi.Output<ApplicationGatewaySkuResponse?> sku;
  /// SSL certificates of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  late final pulumi.Output<List<Map<String, dynamic>>?> sslCertificates;
  /// SSL policy of the application gateway resource.
  late final pulumi.Output<ApplicationGatewaySslPolicyResponse?> sslPolicy;
  /// SSL profiles of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  late final pulumi.Output<List<Map<String, dynamic>>?> sslProfiles;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Trusted client certificates of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  late final pulumi.Output<List<Map<String, dynamic>>?> trustedClientCertificates;
  /// Trusted Root certificates of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  late final pulumi.Output<List<Map<String, dynamic>>?> trustedRootCertificates;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// URL path map of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  late final pulumi.Output<List<Map<String, dynamic>>?> urlPathMaps;
  /// Web application firewall configuration.
  late final pulumi.Output<ApplicationGatewayWebApplicationFirewallConfigurationResponse?> webApplicationFirewallConfiguration;
  /// A list of availability zones denoting where the resource needs to come from.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [ApplicationGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationGateway]. {@macro pulumi_network_application_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationGateway(
    String name, {
    ApplicationGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:ApplicationGateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authenticationCertificates = registerOutput<List<Map<String, dynamic>>?>('authenticationCertificates');
    autoscaleConfiguration = registerOutput<ApplicationGatewayAutoscaleConfigurationResponse?>('autoscaleConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationGatewayAutoscaleConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    backendAddressPools = registerOutput<List<Map<String, dynamic>>?>('backendAddressPools');
    backendHttpSettingsCollection = registerOutput<List<Map<String, dynamic>>?>('backendHttpSettingsCollection');
    backendSettingsCollection = registerOutput<List<Map<String, dynamic>>?>('backendSettingsCollection');
    customErrorConfigurations = registerOutput<List<Map<String, dynamic>>?>('customErrorConfigurations');
    defaultPredefinedSslPolicy = registerOutput<String>('defaultPredefinedSslPolicy');
    enableFips = registerOutput<bool?>('enableFips');
    enableHttp2 = registerOutput<bool?>('enableHttp2');
    etag = registerOutput<String>('etag');
    firewallPolicy = registerOutput<SubResourceResponse?>('firewallPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    forceFirewallPolicyAssociation = registerOutput<bool?>('forceFirewallPolicyAssociation');
    frontendIPConfigurations = registerOutput<List<Map<String, dynamic>>?>('frontendIPConfigurations');
    frontendPorts = registerOutput<List<Map<String, dynamic>>?>('frontendPorts');
    gatewayIPConfigurations = registerOutput<List<Map<String, dynamic>>?>('gatewayIPConfigurations');
    globalConfiguration = registerOutput<ApplicationGatewayGlobalConfigurationResponse?>('globalConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationGatewayGlobalConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    httpListeners = registerOutput<List<Map<String, dynamic>>?>('httpListeners');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    listeners = registerOutput<List<Map<String, dynamic>>?>('listeners');
    loadDistributionPolicies = registerOutput<List<Map<String, dynamic>>?>('loadDistributionPolicies');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    operationalState = registerOutput<String>('operationalState');
    privateEndpointConnections = registerOutput<List<Map<String, dynamic>>>('privateEndpointConnections');
    privateLinkConfigurations = registerOutput<List<Map<String, dynamic>>?>('privateLinkConfigurations');
    probes = registerOutput<List<Map<String, dynamic>>?>('probes');
    provisioningState = registerOutput<String>('provisioningState');
    redirectConfigurations = registerOutput<List<Map<String, dynamic>>?>('redirectConfigurations');
    requestRoutingRules = registerOutput<List<Map<String, dynamic>>?>('requestRoutingRules');
    resourceGuid = registerOutput<String>('resourceGuid');
    rewriteRuleSets = registerOutput<List<Map<String, dynamic>>?>('rewriteRuleSets');
    routingRules = registerOutput<List<Map<String, dynamic>>?>('routingRules');
    sku = registerOutput<ApplicationGatewaySkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationGatewaySkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sslCertificates = registerOutput<List<Map<String, dynamic>>?>('sslCertificates');
    sslPolicy = registerOutput<ApplicationGatewaySslPolicyResponse?>('sslPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationGatewaySslPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sslProfiles = registerOutput<List<Map<String, dynamic>>?>('sslProfiles');
    tags = registerOutput<Map<String, String>?>('tags');
    trustedClientCertificates = registerOutput<List<Map<String, dynamic>>?>('trustedClientCertificates');
    trustedRootCertificates = registerOutput<List<Map<String, dynamic>>?>('trustedRootCertificates');
    type = registerOutput<String>('type');
    urlPathMaps = registerOutput<List<Map<String, dynamic>>?>('urlPathMaps');
    webApplicationFirewallConfiguration = registerOutput<ApplicationGatewayWebApplicationFirewallConfigurationResponse?>('webApplicationFirewallConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationGatewayWebApplicationFirewallConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zones = registerOutput<List<String>?>('zones');
  }
}
