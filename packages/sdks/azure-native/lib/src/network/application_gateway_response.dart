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
  const ApplicationGatewayResponse({
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
      authenticationCertificates: (() { final guardedValue = map['authenticationCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayAuthenticationCertificateResponse>(guardedValue, (value) => ApplicationGatewayAuthenticationCertificateResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      autoscaleConfiguration: (() { final guardedValue = map['autoscaleConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationGatewayAutoscaleConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      backendAddressPools: (() { final guardedValue = map['backendAddressPools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayBackendAddressPoolResponse>(guardedValue, (value) => ApplicationGatewayBackendAddressPoolResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      backendHttpSettingsCollection: (() { final guardedValue = map['backendHttpSettingsCollection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayBackendHttpSettingsResponse>(guardedValue, (value) => ApplicationGatewayBackendHttpSettingsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      backendSettingsCollection: (() { final guardedValue = map['backendSettingsCollection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayBackendSettingsResponse>(guardedValue, (value) => ApplicationGatewayBackendSettingsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      customErrorConfigurations: (() { final guardedValue = map['customErrorConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayCustomErrorResponse>(guardedValue, (value) => ApplicationGatewayCustomErrorResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultPredefinedSslPolicy: pulumi.Input.fromValue(map['defaultPredefinedSslPolicy'] as String),
      enableFips: (() { final guardedValue = map['enableFips']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableHttp2: (() { final guardedValue = map['enableHttp2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      firewallPolicy: (() { final guardedValue = map['firewallPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      forceFirewallPolicyAssociation: (() { final guardedValue = map['forceFirewallPolicyAssociation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      frontendIPConfigurations: (() { final guardedValue = map['frontendIPConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayFrontendIPConfigurationResponse>(guardedValue, (value) => ApplicationGatewayFrontendIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      frontendPorts: (() { final guardedValue = map['frontendPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayFrontendPortResponse>(guardedValue, (value) => ApplicationGatewayFrontendPortResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      gatewayIPConfigurations: (() { final guardedValue = map['gatewayIPConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayIPConfigurationResponse>(guardedValue, (value) => ApplicationGatewayIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      globalConfiguration: (() { final guardedValue = map['globalConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationGatewayGlobalConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpListeners: (() { final guardedValue = map['httpListeners']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayHttpListenerResponse>(guardedValue, (value) => ApplicationGatewayHttpListenerResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      listeners: (() { final guardedValue = map['listeners']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayListenerResponse>(guardedValue, (value) => ApplicationGatewayListenerResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      loadDistributionPolicies: (() { final guardedValue = map['loadDistributionPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayLoadDistributionPolicyResponse>(guardedValue, (value) => ApplicationGatewayLoadDistributionPolicyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      operationalState: pulumi.Input.fromValue(map['operationalState'] as String),
      privateEndpointConnections: pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayPrivateEndpointConnectionResponse>(map['privateEndpointConnections']!, (value) => ApplicationGatewayPrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      privateLinkConfigurations: (() { final guardedValue = map['privateLinkConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayPrivateLinkConfigurationResponse>(guardedValue, (value) => ApplicationGatewayPrivateLinkConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      probes: (() { final guardedValue = map['probes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayProbeResponse>(guardedValue, (value) => ApplicationGatewayProbeResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      redirectConfigurations: (() { final guardedValue = map['redirectConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayRedirectConfigurationResponse>(guardedValue, (value) => ApplicationGatewayRedirectConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      requestRoutingRules: (() { final guardedValue = map['requestRoutingRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayRequestRoutingRuleResponse>(guardedValue, (value) => ApplicationGatewayRequestRoutingRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGuid: pulumi.Input.fromValue(map['resourceGuid'] as String),
      rewriteRuleSets: (() { final guardedValue = map['rewriteRuleSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayRewriteRuleSetResponse>(guardedValue, (value) => ApplicationGatewayRewriteRuleSetResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      routingRules: (() { final guardedValue = map['routingRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayRoutingRuleResponse>(guardedValue, (value) => ApplicationGatewayRoutingRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationGatewaySkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sslCertificates: (() { final guardedValue = map['sslCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewaySslCertificateResponse>(guardedValue, (value) => ApplicationGatewaySslCertificateResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sslPolicy: (() { final guardedValue = map['sslPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationGatewaySslPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sslProfiles: (() { final guardedValue = map['sslProfiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewaySslProfileResponse>(guardedValue, (value) => ApplicationGatewaySslProfileResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      trustedClientCertificates: (() { final guardedValue = map['trustedClientCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayTrustedClientCertificateResponse>(guardedValue, (value) => ApplicationGatewayTrustedClientCertificateResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      trustedRootCertificates: (() { final guardedValue = map['trustedRootCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayTrustedRootCertificateResponse>(guardedValue, (value) => ApplicationGatewayTrustedRootCertificateResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      urlPathMaps: (() { final guardedValue = map['urlPathMaps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayUrlPathMapResponse>(guardedValue, (value) => ApplicationGatewayUrlPathMapResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      webApplicationFirewallConfiguration: (() { final guardedValue = map['webApplicationFirewallConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationGatewayWebApplicationFirewallConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

