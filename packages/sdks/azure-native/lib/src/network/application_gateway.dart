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
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
    authenticationCertificates = registerOutput<List<ApplicationGatewayAuthenticationCertificateResponse>?>('authenticationCertificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayAuthenticationCertificateResponse>(guardedValue, (value) => ApplicationGatewayAuthenticationCertificateResponse.fromMap((value as Map).cast<String, dynamic>())); });
    autoscaleConfiguration = registerOutput<ApplicationGatewayAutoscaleConfigurationResponse?>('autoscaleConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationGatewayAutoscaleConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    backendAddressPools = registerOutput<List<ApplicationGatewayBackendAddressPoolResponse>?>('backendAddressPools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayBackendAddressPoolResponse>(guardedValue, (value) => ApplicationGatewayBackendAddressPoolResponse.fromMap((value as Map).cast<String, dynamic>())); });
    backendHttpSettingsCollection = registerOutput<List<ApplicationGatewayBackendHttpSettingsResponse>?>('backendHttpSettingsCollection', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayBackendHttpSettingsResponse>(guardedValue, (value) => ApplicationGatewayBackendHttpSettingsResponse.fromMap((value as Map).cast<String, dynamic>())); });
    backendSettingsCollection = registerOutput<List<ApplicationGatewayBackendSettingsResponse>?>('backendSettingsCollection', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayBackendSettingsResponse>(guardedValue, (value) => ApplicationGatewayBackendSettingsResponse.fromMap((value as Map).cast<String, dynamic>())); });
    customErrorConfigurations = registerOutput<List<ApplicationGatewayCustomErrorResponse>?>('customErrorConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayCustomErrorResponse>(guardedValue, (value) => ApplicationGatewayCustomErrorResponse.fromMap((value as Map).cast<String, dynamic>())); });
    defaultPredefinedSslPolicy = registerOutput<String>('defaultPredefinedSslPolicy');
    enableFips = registerOutput<bool?>('enableFips');
    enableHttp2 = registerOutput<bool?>('enableHttp2');
    etag = registerOutput<String>('etag');
    firewallPolicy = registerOutput<SubResourceResponse?>('firewallPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    forceFirewallPolicyAssociation = registerOutput<bool?>('forceFirewallPolicyAssociation');
    frontendIPConfigurations = registerOutput<List<ApplicationGatewayFrontendIPConfigurationResponse>?>('frontendIPConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayFrontendIPConfigurationResponse>(guardedValue, (value) => ApplicationGatewayFrontendIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); });
    frontendPorts = registerOutput<List<ApplicationGatewayFrontendPortResponse>?>('frontendPorts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayFrontendPortResponse>(guardedValue, (value) => ApplicationGatewayFrontendPortResponse.fromMap((value as Map).cast<String, dynamic>())); });
    gatewayIPConfigurations = registerOutput<List<ApplicationGatewayIPConfigurationResponse>?>('gatewayIPConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayIPConfigurationResponse>(guardedValue, (value) => ApplicationGatewayIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); });
    globalConfiguration = registerOutput<ApplicationGatewayGlobalConfigurationResponse?>('globalConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationGatewayGlobalConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    httpListeners = registerOutput<List<ApplicationGatewayHttpListenerResponse>?>('httpListeners', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayHttpListenerResponse>(guardedValue, (value) => ApplicationGatewayHttpListenerResponse.fromMap((value as Map).cast<String, dynamic>())); });
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    listeners = registerOutput<List<ApplicationGatewayListenerResponse>?>('listeners', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayListenerResponse>(guardedValue, (value) => ApplicationGatewayListenerResponse.fromMap((value as Map).cast<String, dynamic>())); });
    loadDistributionPolicies = registerOutput<List<ApplicationGatewayLoadDistributionPolicyResponse>?>('loadDistributionPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayLoadDistributionPolicyResponse>(guardedValue, (value) => ApplicationGatewayLoadDistributionPolicyResponse.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    operationalState = registerOutput<String>('operationalState');
    privateEndpointConnections = registerOutput<List<ApplicationGatewayPrivateEndpointConnectionResponse>>('privateEndpointConnections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayPrivateEndpointConnectionResponse>(guardedValue, (value) => ApplicationGatewayPrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    privateLinkConfigurations = registerOutput<List<ApplicationGatewayPrivateLinkConfigurationResponse>?>('privateLinkConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayPrivateLinkConfigurationResponse>(guardedValue, (value) => ApplicationGatewayPrivateLinkConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); });
    probes = registerOutput<List<ApplicationGatewayProbeResponse>?>('probes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayProbeResponse>(guardedValue, (value) => ApplicationGatewayProbeResponse.fromMap((value as Map).cast<String, dynamic>())); });
    provisioningState = registerOutput<String>('provisioningState');
    redirectConfigurations = registerOutput<List<ApplicationGatewayRedirectConfigurationResponse>?>('redirectConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayRedirectConfigurationResponse>(guardedValue, (value) => ApplicationGatewayRedirectConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); });
    requestRoutingRules = registerOutput<List<ApplicationGatewayRequestRoutingRuleResponse>?>('requestRoutingRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayRequestRoutingRuleResponse>(guardedValue, (value) => ApplicationGatewayRequestRoutingRuleResponse.fromMap((value as Map).cast<String, dynamic>())); });
    resourceGuid = registerOutput<String>('resourceGuid');
    rewriteRuleSets = registerOutput<List<ApplicationGatewayRewriteRuleSetResponse>?>('rewriteRuleSets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayRewriteRuleSetResponse>(guardedValue, (value) => ApplicationGatewayRewriteRuleSetResponse.fromMap((value as Map).cast<String, dynamic>())); });
    routingRules = registerOutput<List<ApplicationGatewayRoutingRuleResponse>?>('routingRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayRoutingRuleResponse>(guardedValue, (value) => ApplicationGatewayRoutingRuleResponse.fromMap((value as Map).cast<String, dynamic>())); });
    sku = registerOutput<ApplicationGatewaySkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationGatewaySkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sslCertificates = registerOutput<List<ApplicationGatewaySslCertificateResponse>?>('sslCertificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewaySslCertificateResponse>(guardedValue, (value) => ApplicationGatewaySslCertificateResponse.fromMap((value as Map).cast<String, dynamic>())); });
    sslPolicy = registerOutput<ApplicationGatewaySslPolicyResponse?>('sslPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationGatewaySslPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sslProfiles = registerOutput<List<ApplicationGatewaySslProfileResponse>?>('sslProfiles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewaySslProfileResponse>(guardedValue, (value) => ApplicationGatewaySslProfileResponse.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    trustedClientCertificates = registerOutput<List<ApplicationGatewayTrustedClientCertificateResponse>?>('trustedClientCertificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayTrustedClientCertificateResponse>(guardedValue, (value) => ApplicationGatewayTrustedClientCertificateResponse.fromMap((value as Map).cast<String, dynamic>())); });
    trustedRootCertificates = registerOutput<List<ApplicationGatewayTrustedRootCertificateResponse>?>('trustedRootCertificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayTrustedRootCertificateResponse>(guardedValue, (value) => ApplicationGatewayTrustedRootCertificateResponse.fromMap((value as Map).cast<String, dynamic>())); });
    type = registerOutput<String>('type');
    urlPathMaps = registerOutput<List<ApplicationGatewayUrlPathMapResponse>?>('urlPathMaps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayUrlPathMapResponse>(guardedValue, (value) => ApplicationGatewayUrlPathMapResponse.fromMap((value as Map).cast<String, dynamic>())); });
    webApplicationFirewallConfiguration = registerOutput<ApplicationGatewayWebApplicationFirewallConfigurationResponse?>('webApplicationFirewallConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationGatewayWebApplicationFirewallConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zones = registerOutput<List<String>?>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [ApplicationGateway] resource.
  ApplicationGateway.reference(String urn)
    : super(
        'azure-native:network:ApplicationGateway',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    authenticationCertificates = registerOutput<List<ApplicationGatewayAuthenticationCertificateResponse>?>('authenticationCertificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayAuthenticationCertificateResponse>(guardedValue, (value) => ApplicationGatewayAuthenticationCertificateResponse.fromMap((value as Map).cast<String, dynamic>())); });
    autoscaleConfiguration = registerOutput<ApplicationGatewayAutoscaleConfigurationResponse?>('autoscaleConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationGatewayAutoscaleConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    backendAddressPools = registerOutput<List<ApplicationGatewayBackendAddressPoolResponse>?>('backendAddressPools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayBackendAddressPoolResponse>(guardedValue, (value) => ApplicationGatewayBackendAddressPoolResponse.fromMap((value as Map).cast<String, dynamic>())); });
    backendHttpSettingsCollection = registerOutput<List<ApplicationGatewayBackendHttpSettingsResponse>?>('backendHttpSettingsCollection', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayBackendHttpSettingsResponse>(guardedValue, (value) => ApplicationGatewayBackendHttpSettingsResponse.fromMap((value as Map).cast<String, dynamic>())); });
    backendSettingsCollection = registerOutput<List<ApplicationGatewayBackendSettingsResponse>?>('backendSettingsCollection', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayBackendSettingsResponse>(guardedValue, (value) => ApplicationGatewayBackendSettingsResponse.fromMap((value as Map).cast<String, dynamic>())); });
    customErrorConfigurations = registerOutput<List<ApplicationGatewayCustomErrorResponse>?>('customErrorConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayCustomErrorResponse>(guardedValue, (value) => ApplicationGatewayCustomErrorResponse.fromMap((value as Map).cast<String, dynamic>())); });
    defaultPredefinedSslPolicy = registerOutput<String>('defaultPredefinedSslPolicy');
    enableFips = registerOutput<bool?>('enableFips');
    enableHttp2 = registerOutput<bool?>('enableHttp2');
    etag = registerOutput<String>('etag');
    firewallPolicy = registerOutput<SubResourceResponse?>('firewallPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    forceFirewallPolicyAssociation = registerOutput<bool?>('forceFirewallPolicyAssociation');
    frontendIPConfigurations = registerOutput<List<ApplicationGatewayFrontendIPConfigurationResponse>?>('frontendIPConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayFrontendIPConfigurationResponse>(guardedValue, (value) => ApplicationGatewayFrontendIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); });
    frontendPorts = registerOutput<List<ApplicationGatewayFrontendPortResponse>?>('frontendPorts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayFrontendPortResponse>(guardedValue, (value) => ApplicationGatewayFrontendPortResponse.fromMap((value as Map).cast<String, dynamic>())); });
    gatewayIPConfigurations = registerOutput<List<ApplicationGatewayIPConfigurationResponse>?>('gatewayIPConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayIPConfigurationResponse>(guardedValue, (value) => ApplicationGatewayIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); });
    globalConfiguration = registerOutput<ApplicationGatewayGlobalConfigurationResponse?>('globalConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationGatewayGlobalConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    httpListeners = registerOutput<List<ApplicationGatewayHttpListenerResponse>?>('httpListeners', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayHttpListenerResponse>(guardedValue, (value) => ApplicationGatewayHttpListenerResponse.fromMap((value as Map).cast<String, dynamic>())); });
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    listeners = registerOutput<List<ApplicationGatewayListenerResponse>?>('listeners', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayListenerResponse>(guardedValue, (value) => ApplicationGatewayListenerResponse.fromMap((value as Map).cast<String, dynamic>())); });
    loadDistributionPolicies = registerOutput<List<ApplicationGatewayLoadDistributionPolicyResponse>?>('loadDistributionPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayLoadDistributionPolicyResponse>(guardedValue, (value) => ApplicationGatewayLoadDistributionPolicyResponse.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    operationalState = registerOutput<String>('operationalState');
    privateEndpointConnections = registerOutput<List<ApplicationGatewayPrivateEndpointConnectionResponse>>('privateEndpointConnections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayPrivateEndpointConnectionResponse>(guardedValue, (value) => ApplicationGatewayPrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    privateLinkConfigurations = registerOutput<List<ApplicationGatewayPrivateLinkConfigurationResponse>?>('privateLinkConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayPrivateLinkConfigurationResponse>(guardedValue, (value) => ApplicationGatewayPrivateLinkConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); });
    probes = registerOutput<List<ApplicationGatewayProbeResponse>?>('probes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayProbeResponse>(guardedValue, (value) => ApplicationGatewayProbeResponse.fromMap((value as Map).cast<String, dynamic>())); });
    provisioningState = registerOutput<String>('provisioningState');
    redirectConfigurations = registerOutput<List<ApplicationGatewayRedirectConfigurationResponse>?>('redirectConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayRedirectConfigurationResponse>(guardedValue, (value) => ApplicationGatewayRedirectConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); });
    requestRoutingRules = registerOutput<List<ApplicationGatewayRequestRoutingRuleResponse>?>('requestRoutingRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayRequestRoutingRuleResponse>(guardedValue, (value) => ApplicationGatewayRequestRoutingRuleResponse.fromMap((value as Map).cast<String, dynamic>())); });
    resourceGuid = registerOutput<String>('resourceGuid');
    rewriteRuleSets = registerOutput<List<ApplicationGatewayRewriteRuleSetResponse>?>('rewriteRuleSets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayRewriteRuleSetResponse>(guardedValue, (value) => ApplicationGatewayRewriteRuleSetResponse.fromMap((value as Map).cast<String, dynamic>())); });
    routingRules = registerOutput<List<ApplicationGatewayRoutingRuleResponse>?>('routingRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayRoutingRuleResponse>(guardedValue, (value) => ApplicationGatewayRoutingRuleResponse.fromMap((value as Map).cast<String, dynamic>())); });
    sku = registerOutput<ApplicationGatewaySkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationGatewaySkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sslCertificates = registerOutput<List<ApplicationGatewaySslCertificateResponse>?>('sslCertificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewaySslCertificateResponse>(guardedValue, (value) => ApplicationGatewaySslCertificateResponse.fromMap((value as Map).cast<String, dynamic>())); });
    sslPolicy = registerOutput<ApplicationGatewaySslPolicyResponse?>('sslPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationGatewaySslPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sslProfiles = registerOutput<List<ApplicationGatewaySslProfileResponse>?>('sslProfiles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewaySslProfileResponse>(guardedValue, (value) => ApplicationGatewaySslProfileResponse.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    trustedClientCertificates = registerOutput<List<ApplicationGatewayTrustedClientCertificateResponse>?>('trustedClientCertificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayTrustedClientCertificateResponse>(guardedValue, (value) => ApplicationGatewayTrustedClientCertificateResponse.fromMap((value as Map).cast<String, dynamic>())); });
    trustedRootCertificates = registerOutput<List<ApplicationGatewayTrustedRootCertificateResponse>?>('trustedRootCertificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayTrustedRootCertificateResponse>(guardedValue, (value) => ApplicationGatewayTrustedRootCertificateResponse.fromMap((value as Map).cast<String, dynamic>())); });
    type = registerOutput<String>('type');
    urlPathMaps = registerOutput<List<ApplicationGatewayUrlPathMapResponse>?>('urlPathMaps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayUrlPathMapResponse>(guardedValue, (value) => ApplicationGatewayUrlPathMapResponse.fromMap((value as Map).cast<String, dynamic>())); });
    webApplicationFirewallConfiguration = registerOutput<ApplicationGatewayWebApplicationFirewallConfigurationResponse?>('webApplicationFirewallConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationGatewayWebApplicationFirewallConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zones = registerOutput<List<String>?>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
