import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_args.dart';
import 'application_gateway_authentication_certificate_response.dart';
import 'application_gateway_autoscale_configuration_response.dart';
import 'application_gateway_backend_address_pool_response.dart';
import 'application_gateway_backend_http_settings_response.dart';
import 'application_gateway_backend_settings_response.dart';
import 'application_gateway_custom_error_response.dart';
import 'application_gateway_frontend_ipconfiguration_response.dart';
import 'application_gateway_frontend_port_response.dart';
import 'application_gateway_global_configuration_response.dart';
import 'application_gateway_http_listener_response.dart';
import 'application_gateway_ipconfiguration_response.dart';
import 'application_gateway_listener_response.dart';
import 'application_gateway_load_distribution_policy_response.dart';
import 'application_gateway_private_endpoint_connection_response.dart';
import 'application_gateway_private_link_configuration_response.dart';
import 'application_gateway_probe_response.dart';
import 'application_gateway_redirect_configuration_response.dart';
import 'application_gateway_request_routing_rule_response.dart';
import 'application_gateway_rewrite_rule_set_response.dart';
import 'application_gateway_routing_rule_response.dart';
import 'application_gateway_sku_response.dart';
import 'application_gateway_ssl_certificate_response.dart';
import 'application_gateway_ssl_policy_response.dart';
import 'application_gateway_ssl_profile_response.dart';
import 'application_gateway_trusted_client_certificate_response.dart';
import 'application_gateway_trusted_root_certificate_response.dart';
import 'application_gateway_url_path_map_response.dart';
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
  late final pulumi.Output<List<ApplicationGatewayAuthenticationCertificateResponse>?> authenticationCertificates;
  /// Autoscale Configuration.
  late final pulumi.Output<ApplicationGatewayAutoscaleConfigurationResponse?> autoscaleConfiguration;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Backend address pool of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  late final pulumi.Output<List<ApplicationGatewayBackendAddressPoolResponse>?> backendAddressPools;
  /// Backend http settings of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  late final pulumi.Output<List<ApplicationGatewayBackendHttpSettingsResponse>?> backendHttpSettingsCollection;
  /// Backend settings of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  late final pulumi.Output<List<ApplicationGatewayBackendSettingsResponse>?> backendSettingsCollection;
  /// Custom error configurations of the application gateway resource.
  late final pulumi.Output<List<ApplicationGatewayCustomErrorResponse>?> customErrorConfigurations;
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
  late final pulumi.Output<List<ApplicationGatewayFrontendIPConfigurationResponse>?> frontendIPConfigurations;
  /// Frontend ports of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  late final pulumi.Output<List<ApplicationGatewayFrontendPortResponse>?> frontendPorts;
  /// Subnets of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  late final pulumi.Output<List<ApplicationGatewayIPConfigurationResponse>?> gatewayIPConfigurations;
  /// Global Configuration.
  late final pulumi.Output<ApplicationGatewayGlobalConfigurationResponse?> globalConfiguration;
  /// Http listeners of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  late final pulumi.Output<List<ApplicationGatewayHttpListenerResponse>?> httpListeners;
  /// The identity of the application gateway, if configured.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// Listeners of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  late final pulumi.Output<List<ApplicationGatewayListenerResponse>?> listeners;
  /// Load distribution policies of the application gateway resource.
  late final pulumi.Output<List<ApplicationGatewayLoadDistributionPolicyResponse>?> loadDistributionPolicies;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Operational state of the application gateway resource.
  late final pulumi.Output<String> operationalState;
  /// Private Endpoint connections on application gateway.
  late final pulumi.Output<List<ApplicationGatewayPrivateEndpointConnectionResponse>> privateEndpointConnections;
  /// PrivateLink configurations on application gateway.
  late final pulumi.Output<List<ApplicationGatewayPrivateLinkConfigurationResponse>?> privateLinkConfigurations;
  /// Probes of the application gateway resource.
  late final pulumi.Output<List<ApplicationGatewayProbeResponse>?> probes;
  /// The provisioning state of the application gateway resource.
  late final pulumi.Output<String> provisioningState;
  /// Redirect configurations of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  late final pulumi.Output<List<ApplicationGatewayRedirectConfigurationResponse>?> redirectConfigurations;
  /// Request routing rules of the application gateway resource.
  late final pulumi.Output<List<ApplicationGatewayRequestRoutingRuleResponse>?> requestRoutingRules;
  /// The resource GUID property of the application gateway resource.
  late final pulumi.Output<String> resourceGuid;
  /// Rewrite rules for the application gateway resource.
  late final pulumi.Output<List<ApplicationGatewayRewriteRuleSetResponse>?> rewriteRuleSets;
  /// Routing rules of the application gateway resource.
  late final pulumi.Output<List<ApplicationGatewayRoutingRuleResponse>?> routingRules;
  /// SKU of the application gateway resource.
  late final pulumi.Output<ApplicationGatewaySkuResponse?> sku;
  /// SSL certificates of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  late final pulumi.Output<List<ApplicationGatewaySslCertificateResponse>?> sslCertificates;
  /// SSL policy of the application gateway resource.
  late final pulumi.Output<ApplicationGatewaySslPolicyResponse?> sslPolicy;
  /// SSL profiles of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  late final pulumi.Output<List<ApplicationGatewaySslProfileResponse>?> sslProfiles;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Trusted client certificates of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  late final pulumi.Output<List<ApplicationGatewayTrustedClientCertificateResponse>?> trustedClientCertificates;
  /// Trusted Root certificates of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  late final pulumi.Output<List<ApplicationGatewayTrustedRootCertificateResponse>?> trustedRootCertificates;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// URL path map of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  late final pulumi.Output<List<ApplicationGatewayUrlPathMapResponse>?> urlPathMaps;
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
    this.authenticationCertificates = registerOutput<List<ApplicationGatewayAuthenticationCertificateResponse>?>('authenticationCertificates');
    this.autoscaleConfiguration = registerOutput<ApplicationGatewayAutoscaleConfigurationResponse?>('autoscaleConfiguration');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.backendAddressPools = registerOutput<List<ApplicationGatewayBackendAddressPoolResponse>?>('backendAddressPools');
    this.backendHttpSettingsCollection = registerOutput<List<ApplicationGatewayBackendHttpSettingsResponse>?>('backendHttpSettingsCollection');
    this.backendSettingsCollection = registerOutput<List<ApplicationGatewayBackendSettingsResponse>?>('backendSettingsCollection');
    this.customErrorConfigurations = registerOutput<List<ApplicationGatewayCustomErrorResponse>?>('customErrorConfigurations');
    this.defaultPredefinedSslPolicy = registerOutput<String>('defaultPredefinedSslPolicy');
    this.enableFips = registerOutput<bool?>('enableFips');
    this.enableHttp2 = registerOutput<bool?>('enableHttp2');
    this.etag = registerOutput<String>('etag');
    this.firewallPolicy = registerOutput<SubResourceResponse?>('firewallPolicy');
    this.forceFirewallPolicyAssociation = registerOutput<bool?>('forceFirewallPolicyAssociation');
    this.frontendIPConfigurations = registerOutput<List<ApplicationGatewayFrontendIPConfigurationResponse>?>('frontendIPConfigurations');
    this.frontendPorts = registerOutput<List<ApplicationGatewayFrontendPortResponse>?>('frontendPorts');
    this.gatewayIPConfigurations = registerOutput<List<ApplicationGatewayIPConfigurationResponse>?>('gatewayIPConfigurations');
    this.globalConfiguration = registerOutput<ApplicationGatewayGlobalConfigurationResponse?>('globalConfiguration');
    this.httpListeners = registerOutput<List<ApplicationGatewayHttpListenerResponse>?>('httpListeners');
    this.identity = registerOutput<ManagedServiceIdentityResponse?>('identity');
    this.listeners = registerOutput<List<ApplicationGatewayListenerResponse>?>('listeners');
    this.loadDistributionPolicies = registerOutput<List<ApplicationGatewayLoadDistributionPolicyResponse>?>('loadDistributionPolicies');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.operationalState = registerOutput<String>('operationalState');
    this.privateEndpointConnections = registerOutput<List<ApplicationGatewayPrivateEndpointConnectionResponse>>('privateEndpointConnections');
    this.privateLinkConfigurations = registerOutput<List<ApplicationGatewayPrivateLinkConfigurationResponse>?>('privateLinkConfigurations');
    this.probes = registerOutput<List<ApplicationGatewayProbeResponse>?>('probes');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.redirectConfigurations = registerOutput<List<ApplicationGatewayRedirectConfigurationResponse>?>('redirectConfigurations');
    this.requestRoutingRules = registerOutput<List<ApplicationGatewayRequestRoutingRuleResponse>?>('requestRoutingRules');
    this.resourceGuid = registerOutput<String>('resourceGuid');
    this.rewriteRuleSets = registerOutput<List<ApplicationGatewayRewriteRuleSetResponse>?>('rewriteRuleSets');
    this.routingRules = registerOutput<List<ApplicationGatewayRoutingRuleResponse>?>('routingRules');
    this.sku = registerOutput<ApplicationGatewaySkuResponse?>('sku');
    this.sslCertificates = registerOutput<List<ApplicationGatewaySslCertificateResponse>?>('sslCertificates');
    this.sslPolicy = registerOutput<ApplicationGatewaySslPolicyResponse?>('sslPolicy');
    this.sslProfiles = registerOutput<List<ApplicationGatewaySslProfileResponse>?>('sslProfiles');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.trustedClientCertificates = registerOutput<List<ApplicationGatewayTrustedClientCertificateResponse>?>('trustedClientCertificates');
    this.trustedRootCertificates = registerOutput<List<ApplicationGatewayTrustedRootCertificateResponse>?>('trustedRootCertificates');
    this.type = registerOutput<String>('type');
    this.urlPathMaps = registerOutput<List<ApplicationGatewayUrlPathMapResponse>?>('urlPathMaps');
    this.webApplicationFirewallConfiguration = registerOutput<ApplicationGatewayWebApplicationFirewallConfigurationResponse?>('webApplicationFirewallConfiguration');
    this.zones = registerOutput<List<String>?>('zones');
  }
}
