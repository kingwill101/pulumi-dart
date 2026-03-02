// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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
class ApplicationGatewayResponse {
  /// Authentication certificates of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewayAuthenticationCertificateResponse>>? authenticationCertificates;
  /// Autoscale Configuration.
  final pulumi.Input<ApplicationGatewayAutoscaleConfigurationResponse>? autoscaleConfiguration;
  /// Backend address pool of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewayBackendAddressPoolResponse>>? backendAddressPools;
  /// Backend http settings of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewayBackendHttpSettingsResponse>>? backendHttpSettingsCollection;
  /// Backend settings of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewayBackendSettingsResponse>>? backendSettingsCollection;
  /// Custom error configurations of the application gateway resource.
  final pulumi.Input<List<ApplicationGatewayCustomErrorResponse>>? customErrorConfigurations;
  /// The default predefined SSL Policy applied on the application gateway resource.
  final pulumi.Input<String> defaultPredefinedSslPolicy;
  /// Whether FIPS is enabled on the application gateway resource.
  final pulumi.Input<bool>? enableFips;
  /// Whether HTTP2 is enabled on the application gateway resource.
  final pulumi.Input<bool>? enableHttp2;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Reference to the FirewallPolicy resource.
  final pulumi.Input<SubResourceResponse>? firewallPolicy;
  /// If true, associates a firewall policy with an application gateway regardless whether the policy differs from the WAF Config.
  final pulumi.Input<bool>? forceFirewallPolicyAssociation;
  /// Frontend IP addresses of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewayFrontendIPConfigurationResponse>>? frontendIPConfigurations;
  /// Frontend ports of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewayFrontendPortResponse>>? frontendPorts;
  /// Subnets of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewayIPConfigurationResponse>>? gatewayIPConfigurations;
  /// Global Configuration.
  final pulumi.Input<ApplicationGatewayGlobalConfigurationResponse>? globalConfiguration;
  /// Http listeners of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewayHttpListenerResponse>>? httpListeners;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The identity of the application gateway, if configured.
  final pulumi.Input<ManagedServiceIdentityResponse>? identity;
  /// Listeners of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewayListenerResponse>>? listeners;
  /// Load distribution policies of the application gateway resource.
  final pulumi.Input<List<ApplicationGatewayLoadDistributionPolicyResponse>>? loadDistributionPolicies;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// Resource name.
  final pulumi.Input<String> name;
  /// Operational state of the application gateway resource.
  final pulumi.Input<String> operationalState;
  /// Private Endpoint connections on application gateway.
  final pulumi.Input<List<ApplicationGatewayPrivateEndpointConnectionResponse>> privateEndpointConnections;
  /// PrivateLink configurations on application gateway.
  final pulumi.Input<List<ApplicationGatewayPrivateLinkConfigurationResponse>>? privateLinkConfigurations;
  /// Probes of the application gateway resource.
  final pulumi.Input<List<ApplicationGatewayProbeResponse>>? probes;
  /// The provisioning state of the application gateway resource.
  final pulumi.Input<String> provisioningState;
  /// Redirect configurations of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewayRedirectConfigurationResponse>>? redirectConfigurations;
  /// Request routing rules of the application gateway resource.
  final pulumi.Input<List<ApplicationGatewayRequestRoutingRuleResponse>>? requestRoutingRules;
  /// The resource GUID property of the application gateway resource.
  final pulumi.Input<String> resourceGuid;
  /// Rewrite rules for the application gateway resource.
  final pulumi.Input<List<ApplicationGatewayRewriteRuleSetResponse>>? rewriteRuleSets;
  /// Routing rules of the application gateway resource.
  final pulumi.Input<List<ApplicationGatewayRoutingRuleResponse>>? routingRules;
  /// SKU of the application gateway resource.
  final pulumi.Input<ApplicationGatewaySkuResponse>? sku;
  /// SSL certificates of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewaySslCertificateResponse>>? sslCertificates;
  /// SSL policy of the application gateway resource.
  final pulumi.Input<ApplicationGatewaySslPolicyResponse>? sslPolicy;
  /// SSL profiles of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewaySslProfileResponse>>? sslProfiles;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Trusted client certificates of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewayTrustedClientCertificateResponse>>? trustedClientCertificates;
  /// Trusted Root certificates of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewayTrustedRootCertificateResponse>>? trustedRootCertificates;
  /// Resource type.
  final pulumi.Input<String> type;
  /// URL path map of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewayUrlPathMapResponse>>? urlPathMaps;
  /// Web application firewall configuration.
  final pulumi.Input<ApplicationGatewayWebApplicationFirewallConfigurationResponse>? webApplicationFirewallConfiguration;
  /// A list of availability zones denoting where the resource needs to come from.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [ApplicationGatewayResponse].
  /// [authenticationCertificates] Authentication certificates of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [autoscaleConfiguration] Autoscale Configuration.
  /// [backendAddressPools] Backend address pool of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [backendHttpSettingsCollection] Backend http settings of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [backendSettingsCollection] Backend settings of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [customErrorConfigurations] Custom error configurations of the application gateway resource.
  /// [defaultPredefinedSslPolicy] The default predefined SSL Policy applied on the application gateway resource.
  /// [enableFips] Whether FIPS is enabled on the application gateway resource.
  /// [enableHttp2] Whether HTTP2 is enabled on the application gateway resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [firewallPolicy] Reference to the FirewallPolicy resource.
  /// [forceFirewallPolicyAssociation] If true, associates a firewall policy with an application gateway regardless whether the policy differs from the WAF Config.
  /// [frontendIPConfigurations] Frontend IP addresses of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [frontendPorts] Frontend ports of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [gatewayIPConfigurations] Subnets of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [globalConfiguration] Global Configuration.
  /// [httpListeners] Http listeners of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [id] Resource ID.
  /// [identity] The identity of the application gateway, if configured.
  /// [listeners] Listeners of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [loadDistributionPolicies] Load distribution policies of the application gateway resource.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [operationalState] Operational state of the application gateway resource.
  /// [privateEndpointConnections] Private Endpoint connections on application gateway.
  /// [privateLinkConfigurations] PrivateLink configurations on application gateway.
  /// [probes] Probes of the application gateway resource.
  /// [provisioningState] The provisioning state of the application gateway resource.
  /// [redirectConfigurations] Redirect configurations of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [requestRoutingRules] Request routing rules of the application gateway resource.
  /// [resourceGuid] The resource GUID property of the application gateway resource.
  /// [rewriteRuleSets] Rewrite rules for the application gateway resource.
  /// [routingRules] Routing rules of the application gateway resource.
  /// [sku] SKU of the application gateway resource.
  /// [sslCertificates] SSL certificates of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [sslPolicy] SSL policy of the application gateway resource.
  /// [sslProfiles] SSL profiles of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [tags] Resource tags.
  /// [trustedClientCertificates] Trusted client certificates of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [trustedRootCertificates] Trusted Root certificates of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [type] Resource type.
  /// [urlPathMaps] URL path map of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [webApplicationFirewallConfiguration] Web application firewall configuration.
  /// [zones] A list of availability zones denoting where the resource needs to come from.
  ApplicationGatewayResponse({
    this.authenticationCertificates,
    this.autoscaleConfiguration,
    this.backendAddressPools,
    this.backendHttpSettingsCollection,
    this.backendSettingsCollection,
    this.customErrorConfigurations,
    required this.defaultPredefinedSslPolicy,
    this.enableFips,
    this.enableHttp2,
    required this.etag,
    this.firewallPolicy,
    this.forceFirewallPolicyAssociation,
    this.frontendIPConfigurations,
    this.frontendPorts,
    this.gatewayIPConfigurations,
    this.globalConfiguration,
    this.httpListeners,
    this.id,
    this.identity,
    this.listeners,
    this.loadDistributionPolicies,
    this.location,
    required this.name,
    required this.operationalState,
    required this.privateEndpointConnections,
    this.privateLinkConfigurations,
    this.probes,
    required this.provisioningState,
    this.redirectConfigurations,
    this.requestRoutingRules,
    required this.resourceGuid,
    this.rewriteRuleSets,
    this.routingRules,
    this.sku,
    this.sslCertificates,
    this.sslPolicy,
    this.sslProfiles,
    this.tags,
    this.trustedClientCertificates,
    this.trustedRootCertificates,
    required this.type,
    this.urlPathMaps,
    this.webApplicationFirewallConfiguration,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationCertificates': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayAuthenticationCertificateResponse>, List<Map<String, dynamic>>>(authenticationCertificates, (value) => pulumi.Input.encodeList<ApplicationGatewayAuthenticationCertificateResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'autoscaleConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationGatewayAutoscaleConfigurationResponse, Map<String, dynamic>>(autoscaleConfiguration, (value) => value.toMap()),
      'backendAddressPools': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayBackendAddressPoolResponse>, List<Map<String, dynamic>>>(backendAddressPools, (value) => pulumi.Input.encodeList<ApplicationGatewayBackendAddressPoolResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'backendHttpSettingsCollection': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayBackendHttpSettingsResponse>, List<Map<String, dynamic>>>(backendHttpSettingsCollection, (value) => pulumi.Input.encodeList<ApplicationGatewayBackendHttpSettingsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'backendSettingsCollection': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayBackendSettingsResponse>, List<Map<String, dynamic>>>(backendSettingsCollection, (value) => pulumi.Input.encodeList<ApplicationGatewayBackendSettingsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customErrorConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayCustomErrorResponse>, List<Map<String, dynamic>>>(customErrorConfigurations, (value) => pulumi.Input.encodeList<ApplicationGatewayCustomErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultPredefinedSslPolicy': defaultPredefinedSslPolicy,
      'enableFips': ?enableFips,
      'enableHttp2': ?enableHttp2,
      'etag': etag,
      'firewallPolicy': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(firewallPolicy, (value) => value.toMap()),
      'forceFirewallPolicyAssociation': ?forceFirewallPolicyAssociation,
      'frontendIPConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayFrontendIPConfigurationResponse>, List<Map<String, dynamic>>>(frontendIPConfigurations, (value) => pulumi.Input.encodeList<ApplicationGatewayFrontendIPConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'frontendPorts': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayFrontendPortResponse>, List<Map<String, dynamic>>>(frontendPorts, (value) => pulumi.Input.encodeList<ApplicationGatewayFrontendPortResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gatewayIPConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayIPConfigurationResponse>, List<Map<String, dynamic>>>(gatewayIPConfigurations, (value) => pulumi.Input.encodeList<ApplicationGatewayIPConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'globalConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationGatewayGlobalConfigurationResponse, Map<String, dynamic>>(globalConfiguration, (value) => value.toMap()),
      'httpListeners': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayHttpListenerResponse>, List<Map<String, dynamic>>>(httpListeners, (value) => pulumi.Input.encodeList<ApplicationGatewayHttpListenerResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentityResponse, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'listeners': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayListenerResponse>, List<Map<String, dynamic>>>(listeners, (value) => pulumi.Input.encodeList<ApplicationGatewayListenerResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadDistributionPolicies': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayLoadDistributionPolicyResponse>, List<Map<String, dynamic>>>(loadDistributionPolicies, (value) => pulumi.Input.encodeList<ApplicationGatewayLoadDistributionPolicyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': name,
      'operationalState': operationalState,
      'privateEndpointConnections': pulumi.Input.mapInputValue<List<ApplicationGatewayPrivateEndpointConnectionResponse>, List<Map<String, dynamic>>>(privateEndpointConnections, (value) => pulumi.Input.encodeList<ApplicationGatewayPrivateEndpointConnectionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateLinkConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayPrivateLinkConfigurationResponse>, List<Map<String, dynamic>>>(privateLinkConfigurations, (value) => pulumi.Input.encodeList<ApplicationGatewayPrivateLinkConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'probes': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayProbeResponse>, List<Map<String, dynamic>>>(probes, (value) => pulumi.Input.encodeList<ApplicationGatewayProbeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'redirectConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayRedirectConfigurationResponse>, List<Map<String, dynamic>>>(redirectConfigurations, (value) => pulumi.Input.encodeList<ApplicationGatewayRedirectConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestRoutingRules': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayRequestRoutingRuleResponse>, List<Map<String, dynamic>>>(requestRoutingRules, (value) => pulumi.Input.encodeList<ApplicationGatewayRequestRoutingRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGuid': resourceGuid,
      'rewriteRuleSets': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayRewriteRuleSetResponse>, List<Map<String, dynamic>>>(rewriteRuleSets, (value) => pulumi.Input.encodeList<ApplicationGatewayRewriteRuleSetResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'routingRules': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayRoutingRuleResponse>, List<Map<String, dynamic>>>(routingRules, (value) => pulumi.Input.encodeList<ApplicationGatewayRoutingRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sku': ?pulumi.Input.mapOptionalInputValue<ApplicationGatewaySkuResponse, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'sslCertificates': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewaySslCertificateResponse>, List<Map<String, dynamic>>>(sslCertificates, (value) => pulumi.Input.encodeList<ApplicationGatewaySslCertificateResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sslPolicy': ?pulumi.Input.mapOptionalInputValue<ApplicationGatewaySslPolicyResponse, Map<String, dynamic>>(sslPolicy, (value) => value.toMap()),
      'sslProfiles': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewaySslProfileResponse>, List<Map<String, dynamic>>>(sslProfiles, (value) => pulumi.Input.encodeList<ApplicationGatewaySslProfileResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'trustedClientCertificates': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayTrustedClientCertificateResponse>, List<Map<String, dynamic>>>(trustedClientCertificates, (value) => pulumi.Input.encodeList<ApplicationGatewayTrustedClientCertificateResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'trustedRootCertificates': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayTrustedRootCertificateResponse>, List<Map<String, dynamic>>>(trustedRootCertificates, (value) => pulumi.Input.encodeList<ApplicationGatewayTrustedRootCertificateResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
      'urlPathMaps': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayUrlPathMapResponse>, List<Map<String, dynamic>>>(urlPathMaps, (value) => pulumi.Input.encodeList<ApplicationGatewayUrlPathMapResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'webApplicationFirewallConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationGatewayWebApplicationFirewallConfigurationResponse, Map<String, dynamic>>(webApplicationFirewallConfiguration, (value) => value.toMap()),
      'zones': ?zones,
    };
  }

  factory ApplicationGatewayResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayResponse(
      authenticationCertificates: map['authenticationCertificates'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayAuthenticationCertificateResponse>(map['authenticationCertificates'], (value) => ApplicationGatewayAuthenticationCertificateResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      autoscaleConfiguration: map['autoscaleConfiguration'] == null ? null : (ApplicationGatewayAutoscaleConfigurationResponse.fromMap((map['autoscaleConfiguration'] as Map).cast<String, dynamic>())).input(),
      backendAddressPools: map['backendAddressPools'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayBackendAddressPoolResponse>(map['backendAddressPools'], (value) => ApplicationGatewayBackendAddressPoolResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      backendHttpSettingsCollection: map['backendHttpSettingsCollection'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayBackendHttpSettingsResponse>(map['backendHttpSettingsCollection'], (value) => ApplicationGatewayBackendHttpSettingsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      backendSettingsCollection: map['backendSettingsCollection'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayBackendSettingsResponse>(map['backendSettingsCollection'], (value) => ApplicationGatewayBackendSettingsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      customErrorConfigurations: map['customErrorConfigurations'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayCustomErrorResponse>(map['customErrorConfigurations'], (value) => ApplicationGatewayCustomErrorResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      defaultPredefinedSslPolicy: (map['defaultPredefinedSslPolicy'] as String).input(),
      enableFips: map['enableFips'] == null ? null : (map['enableFips'] as bool).input(),
      enableHttp2: map['enableHttp2'] == null ? null : (map['enableHttp2'] as bool).input(),
      etag: (map['etag'] as String).input(),
      firewallPolicy: map['firewallPolicy'] == null ? null : (SubResourceResponse.fromMap((map['firewallPolicy'] as Map).cast<String, dynamic>())).input(),
      forceFirewallPolicyAssociation: map['forceFirewallPolicyAssociation'] == null ? null : (map['forceFirewallPolicyAssociation'] as bool).input(),
      frontendIPConfigurations: map['frontendIPConfigurations'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayFrontendIPConfigurationResponse>(map['frontendIPConfigurations'], (value) => ApplicationGatewayFrontendIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      frontendPorts: map['frontendPorts'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayFrontendPortResponse>(map['frontendPorts'], (value) => ApplicationGatewayFrontendPortResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      gatewayIPConfigurations: map['gatewayIPConfigurations'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayIPConfigurationResponse>(map['gatewayIPConfigurations'], (value) => ApplicationGatewayIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      globalConfiguration: map['globalConfiguration'] == null ? null : (ApplicationGatewayGlobalConfigurationResponse.fromMap((map['globalConfiguration'] as Map).cast<String, dynamic>())).input(),
      httpListeners: map['httpListeners'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayHttpListenerResponse>(map['httpListeners'], (value) => ApplicationGatewayHttpListenerResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      identity: map['identity'] == null ? null : (ManagedServiceIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      listeners: map['listeners'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayListenerResponse>(map['listeners'], (value) => ApplicationGatewayListenerResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      loadDistributionPolicies: map['loadDistributionPolicies'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayLoadDistributionPolicyResponse>(map['loadDistributionPolicies'], (value) => ApplicationGatewayLoadDistributionPolicyResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: (map['name'] as String).input(),
      operationalState: (map['operationalState'] as String).input(),
      privateEndpointConnections: (pulumi.Input.decodeList<ApplicationGatewayPrivateEndpointConnectionResponse>(map['privateEndpointConnections'], (value) => ApplicationGatewayPrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      privateLinkConfigurations: map['privateLinkConfigurations'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayPrivateLinkConfigurationResponse>(map['privateLinkConfigurations'], (value) => ApplicationGatewayPrivateLinkConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      probes: map['probes'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayProbeResponse>(map['probes'], (value) => ApplicationGatewayProbeResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      redirectConfigurations: map['redirectConfigurations'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayRedirectConfigurationResponse>(map['redirectConfigurations'], (value) => ApplicationGatewayRedirectConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      requestRoutingRules: map['requestRoutingRules'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayRequestRoutingRuleResponse>(map['requestRoutingRules'], (value) => ApplicationGatewayRequestRoutingRuleResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGuid: (map['resourceGuid'] as String).input(),
      rewriteRuleSets: map['rewriteRuleSets'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayRewriteRuleSetResponse>(map['rewriteRuleSets'], (value) => ApplicationGatewayRewriteRuleSetResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      routingRules: map['routingRules'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayRoutingRuleResponse>(map['routingRules'], (value) => ApplicationGatewayRoutingRuleResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sku: map['sku'] == null ? null : (ApplicationGatewaySkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      sslCertificates: map['sslCertificates'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewaySslCertificateResponse>(map['sslCertificates'], (value) => ApplicationGatewaySslCertificateResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sslPolicy: map['sslPolicy'] == null ? null : (ApplicationGatewaySslPolicyResponse.fromMap((map['sslPolicy'] as Map).cast<String, dynamic>())).input(),
      sslProfiles: map['sslProfiles'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewaySslProfileResponse>(map['sslProfiles'], (value) => ApplicationGatewaySslProfileResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      trustedClientCertificates: map['trustedClientCertificates'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayTrustedClientCertificateResponse>(map['trustedClientCertificates'], (value) => ApplicationGatewayTrustedClientCertificateResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      trustedRootCertificates: map['trustedRootCertificates'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayTrustedRootCertificateResponse>(map['trustedRootCertificates'], (value) => ApplicationGatewayTrustedRootCertificateResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: (map['type'] as String).input(),
      urlPathMaps: map['urlPathMaps'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayUrlPathMapResponse>(map['urlPathMaps'], (value) => ApplicationGatewayUrlPathMapResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      webApplicationFirewallConfiguration: map['webApplicationFirewallConfiguration'] == null ? null : (ApplicationGatewayWebApplicationFirewallConfigurationResponse.fromMap((map['webApplicationFirewallConfiguration'] as Map).cast<String, dynamic>())).input(),
      zones: map['zones'] == null ? null : ((map['zones'] as List).cast<String>()).input(),
    );
  }
}

