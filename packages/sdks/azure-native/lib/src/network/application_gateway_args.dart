// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_authentication_certificate.dart';
import 'application_gateway_autoscale_configuration.dart';
import 'application_gateway_backend_address_pool.dart';
import 'application_gateway_backend_http_settings.dart';
import 'application_gateway_backend_settings.dart';
import 'application_gateway_custom_error.dart';
import 'application_gateway_frontend_ipconfiguration.dart';
import 'application_gateway_frontend_port.dart';
import 'application_gateway_global_configuration.dart';
import 'application_gateway_http_listener.dart';
import 'application_gateway_ipconfiguration.dart';
import 'application_gateway_listener.dart';
import 'application_gateway_load_distribution_policy.dart';
import 'application_gateway_private_link_configuration.dart';
import 'application_gateway_probe.dart';
import 'application_gateway_redirect_configuration.dart';
import 'application_gateway_request_routing_rule.dart';
import 'application_gateway_rewrite_rule_set.dart';
import 'application_gateway_routing_rule.dart';
import 'application_gateway_sku.dart';
import 'application_gateway_ssl_certificate.dart';
import 'application_gateway_ssl_policy.dart';
import 'application_gateway_ssl_profile.dart';
import 'application_gateway_trusted_client_certificate.dart';
import 'application_gateway_trusted_root_certificate.dart';
import 'application_gateway_url_path_map.dart';
import 'application_gateway_web_application_firewall_configuration.dart';
import 'managed_service_identity.dart';
import 'sub_resource.dart';

/// {@template pulumi_network_application_gateway_args_doc}
/// The set of arguments for ApplicationGateway.
/// {@endtemplate}
/// {@macro pulumi_network_application_gateway_args_doc}
class ApplicationGatewayArgs {
  /// The name of the application gateway.
  final pulumi.Input<String?>? applicationGatewayName;
  /// Authentication certificates of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewayAuthenticationCertificate>?>? authenticationCertificates;
  /// Autoscale Configuration.
  final pulumi.Input<ApplicationGatewayAutoscaleConfiguration?>? autoscaleConfiguration;
  /// Backend address pool of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewayBackendAddressPool>?>? backendAddressPools;
  /// Backend http settings of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewayBackendHttpSettings>?>? backendHttpSettingsCollection;
  /// Backend settings of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewayBackendSettings>?>? backendSettingsCollection;
  /// Custom error configurations of the application gateway resource.
  final pulumi.Input<List<ApplicationGatewayCustomError>?>? customErrorConfigurations;
  /// Whether FIPS is enabled on the application gateway resource.
  final pulumi.Input<bool?>? enableFips;
  /// Whether HTTP2 is enabled on the application gateway resource.
  final pulumi.Input<bool?>? enableHttp2;
  /// Reference to the FirewallPolicy resource.
  final pulumi.Input<SubResource?>? firewallPolicy;
  /// If true, associates a firewall policy with an application gateway regardless whether the policy differs from the WAF Config.
  final pulumi.Input<bool?>? forceFirewallPolicyAssociation;
  /// Frontend IP addresses of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewayFrontendIPConfiguration>?>? frontendIPConfigurations;
  /// Frontend ports of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewayFrontendPort>?>? frontendPorts;
  /// Subnets of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewayIPConfiguration>?>? gatewayIPConfigurations;
  /// Global Configuration.
  final pulumi.Input<ApplicationGatewayGlobalConfiguration?>? globalConfiguration;
  /// Http listeners of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewayHttpListener>?>? httpListeners;
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// The identity of the application gateway, if configured.
  final pulumi.Input<ManagedServiceIdentity?>? identity;
  /// Listeners of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewayListener>?>? listeners;
  /// Load distribution policies of the application gateway resource.
  final pulumi.Input<List<ApplicationGatewayLoadDistributionPolicy>?>? loadDistributionPolicies;
  /// Resource location.
  final pulumi.Input<String?>? location;
  /// PrivateLink configurations on application gateway.
  final pulumi.Input<List<ApplicationGatewayPrivateLinkConfiguration>?>? privateLinkConfigurations;
  /// Probes of the application gateway resource.
  final pulumi.Input<List<ApplicationGatewayProbe>?>? probes;
  /// Redirect configurations of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewayRedirectConfiguration>?>? redirectConfigurations;
  /// Request routing rules of the application gateway resource.
  final pulumi.Input<List<ApplicationGatewayRequestRoutingRule>?>? requestRoutingRules;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Rewrite rules for the application gateway resource.
  final pulumi.Input<List<ApplicationGatewayRewriteRuleSet>?>? rewriteRuleSets;
  /// Routing rules of the application gateway resource.
  final pulumi.Input<List<ApplicationGatewayRoutingRule>?>? routingRules;
  /// SKU of the application gateway resource.
  final pulumi.Input<ApplicationGatewaySku?>? sku;
  /// SSL certificates of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewaySslCertificate>?>? sslCertificates;
  /// SSL policy of the application gateway resource.
  final pulumi.Input<ApplicationGatewaySslPolicy?>? sslPolicy;
  /// SSL profiles of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewaySslProfile>?>? sslProfiles;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Trusted client certificates of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewayTrustedClientCertificate>?>? trustedClientCertificates;
  /// Trusted Root certificates of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewayTrustedRootCertificate>?>? trustedRootCertificates;
  /// URL path map of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewayUrlPathMap>?>? urlPathMaps;
  /// Web application firewall configuration.
  final pulumi.Input<ApplicationGatewayWebApplicationFirewallConfiguration?>? webApplicationFirewallConfiguration;
  /// A list of availability zones denoting where the resource needs to come from.
  final pulumi.Input<List<String>?>? zones;

  /// Creates a new [ApplicationGatewayArgs].
  /// [applicationGatewayName] The name of the application gateway.
  /// [authenticationCertificates] Authentication certificates of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [autoscaleConfiguration] Autoscale Configuration.
  /// [backendAddressPools] Backend address pool of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [backendHttpSettingsCollection] Backend http settings of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [backendSettingsCollection] Backend settings of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [customErrorConfigurations] Custom error configurations of the application gateway resource.
  /// [enableFips] Whether FIPS is enabled on the application gateway resource.
  /// [enableHttp2] Whether HTTP2 is enabled on the application gateway resource.
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
  /// [privateLinkConfigurations] PrivateLink configurations on application gateway.
  /// [probes] Probes of the application gateway resource.
  /// [redirectConfigurations] Redirect configurations of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [requestRoutingRules] Request routing rules of the application gateway resource.
  /// [resourceGroupName] The name of the resource group.
  /// [rewriteRuleSets] Rewrite rules for the application gateway resource.
  /// [routingRules] Routing rules of the application gateway resource.
  /// [sku] SKU of the application gateway resource.
  /// [sslCertificates] SSL certificates of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [sslPolicy] SSL policy of the application gateway resource.
  /// [sslProfiles] SSL profiles of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [tags] Resource tags.
  /// [trustedClientCertificates] Trusted client certificates of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [trustedRootCertificates] Trusted Root certificates of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [urlPathMaps] URL path map of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  /// [webApplicationFirewallConfiguration] Web application firewall configuration.
  /// [zones] A list of availability zones denoting where the resource needs to come from.
  const ApplicationGatewayArgs({
    this.applicationGatewayName,
    this.authenticationCertificates,
    this.autoscaleConfiguration,
    this.backendAddressPools,
    this.backendHttpSettingsCollection,
    this.backendSettingsCollection,
    this.customErrorConfigurations,
    this.enableFips,
    this.enableHttp2,
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
    this.privateLinkConfigurations,
    this.probes,
    this.redirectConfigurations,
    this.requestRoutingRules,
    required this.resourceGroupName,
    this.rewriteRuleSets,
    this.routingRules,
    this.sku,
    this.sslCertificates,
    this.sslPolicy,
    this.sslProfiles,
    this.tags,
    this.trustedClientCertificates,
    this.trustedRootCertificates,
    this.urlPathMaps,
    this.webApplicationFirewallConfiguration,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGatewayName': ?applicationGatewayName,
      'authenticationCertificates': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayAuthenticationCertificate>, List<Map<String, dynamic>>>(authenticationCertificates, (value) => pulumi.Input.encodeList<ApplicationGatewayAuthenticationCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'autoscaleConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationGatewayAutoscaleConfiguration, Map<String, dynamic>>(autoscaleConfiguration, (value) => value.toMap()),
      'backendAddressPools': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayBackendAddressPool>, List<Map<String, dynamic>>>(backendAddressPools, (value) => pulumi.Input.encodeList<ApplicationGatewayBackendAddressPool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'backendHttpSettingsCollection': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayBackendHttpSettings>, List<Map<String, dynamic>>>(backendHttpSettingsCollection, (value) => pulumi.Input.encodeList<ApplicationGatewayBackendHttpSettings, Map<String, dynamic>>(value, (value) => value.toMap())),
      'backendSettingsCollection': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayBackendSettings>, List<Map<String, dynamic>>>(backendSettingsCollection, (value) => pulumi.Input.encodeList<ApplicationGatewayBackendSettings, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customErrorConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayCustomError>, List<Map<String, dynamic>>>(customErrorConfigurations, (value) => pulumi.Input.encodeList<ApplicationGatewayCustomError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableFips': ?enableFips,
      'enableHttp2': ?enableHttp2,
      'firewallPolicy': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(firewallPolicy, (value) => value.toMap()),
      'forceFirewallPolicyAssociation': ?forceFirewallPolicyAssociation,
      'frontendIPConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayFrontendIPConfiguration>, List<Map<String, dynamic>>>(frontendIPConfigurations, (value) => pulumi.Input.encodeList<ApplicationGatewayFrontendIPConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'frontendPorts': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayFrontendPort>, List<Map<String, dynamic>>>(frontendPorts, (value) => pulumi.Input.encodeList<ApplicationGatewayFrontendPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gatewayIPConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayIPConfiguration>, List<Map<String, dynamic>>>(gatewayIPConfigurations, (value) => pulumi.Input.encodeList<ApplicationGatewayIPConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'globalConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationGatewayGlobalConfiguration, Map<String, dynamic>>(globalConfiguration, (value) => value.toMap()),
      'httpListeners': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayHttpListener>, List<Map<String, dynamic>>>(httpListeners, (value) => pulumi.Input.encodeList<ApplicationGatewayHttpListener, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'listeners': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayListener>, List<Map<String, dynamic>>>(listeners, (value) => pulumi.Input.encodeList<ApplicationGatewayListener, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadDistributionPolicies': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayLoadDistributionPolicy>, List<Map<String, dynamic>>>(loadDistributionPolicies, (value) => pulumi.Input.encodeList<ApplicationGatewayLoadDistributionPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'privateLinkConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayPrivateLinkConfiguration>, List<Map<String, dynamic>>>(privateLinkConfigurations, (value) => pulumi.Input.encodeList<ApplicationGatewayPrivateLinkConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'probes': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayProbe>, List<Map<String, dynamic>>>(probes, (value) => pulumi.Input.encodeList<ApplicationGatewayProbe, Map<String, dynamic>>(value, (value) => value.toMap())),
      'redirectConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayRedirectConfiguration>, List<Map<String, dynamic>>>(redirectConfigurations, (value) => pulumi.Input.encodeList<ApplicationGatewayRedirectConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestRoutingRules': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayRequestRoutingRule>, List<Map<String, dynamic>>>(requestRoutingRules, (value) => pulumi.Input.encodeList<ApplicationGatewayRequestRoutingRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'rewriteRuleSets': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayRewriteRuleSet>, List<Map<String, dynamic>>>(rewriteRuleSets, (value) => pulumi.Input.encodeList<ApplicationGatewayRewriteRuleSet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'routingRules': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayRoutingRule>, List<Map<String, dynamic>>>(routingRules, (value) => pulumi.Input.encodeList<ApplicationGatewayRoutingRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sku': ?pulumi.Input.mapOptionalInputValue<ApplicationGatewaySku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'sslCertificates': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewaySslCertificate>, List<Map<String, dynamic>>>(sslCertificates, (value) => pulumi.Input.encodeList<ApplicationGatewaySslCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sslPolicy': ?pulumi.Input.mapOptionalInputValue<ApplicationGatewaySslPolicy, Map<String, dynamic>>(sslPolicy, (value) => value.toMap()),
      'sslProfiles': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewaySslProfile>, List<Map<String, dynamic>>>(sslProfiles, (value) => pulumi.Input.encodeList<ApplicationGatewaySslProfile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'trustedClientCertificates': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayTrustedClientCertificate>, List<Map<String, dynamic>>>(trustedClientCertificates, (value) => pulumi.Input.encodeList<ApplicationGatewayTrustedClientCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'trustedRootCertificates': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayTrustedRootCertificate>, List<Map<String, dynamic>>>(trustedRootCertificates, (value) => pulumi.Input.encodeList<ApplicationGatewayTrustedRootCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'urlPathMaps': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayUrlPathMap>, List<Map<String, dynamic>>>(urlPathMaps, (value) => pulumi.Input.encodeList<ApplicationGatewayUrlPathMap, Map<String, dynamic>>(value, (value) => value.toMap())),
      'webApplicationFirewallConfiguration': ?pulumi.Input.mapOptionalInputValue<ApplicationGatewayWebApplicationFirewallConfiguration, Map<String, dynamic>>(webApplicationFirewallConfiguration, (value) => value.toMap()),
      'zones': ?zones,
    };
  }

  factory ApplicationGatewayArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayArgs(
      applicationGatewayName: (() { final guardedValue = map['applicationGatewayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authenticationCertificates: (() { final guardedValue = map['authenticationCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayAuthenticationCertificate>(guardedValue, (value) => ApplicationGatewayAuthenticationCertificate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      autoscaleConfiguration: (() { final guardedValue = map['autoscaleConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationGatewayAutoscaleConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      backendAddressPools: (() { final guardedValue = map['backendAddressPools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayBackendAddressPool>(guardedValue, (value) => ApplicationGatewayBackendAddressPool.fromMap((value as Map).cast<String, dynamic>()))); })(),
      backendHttpSettingsCollection: (() { final guardedValue = map['backendHttpSettingsCollection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayBackendHttpSettings>(guardedValue, (value) => ApplicationGatewayBackendHttpSettings.fromMap((value as Map).cast<String, dynamic>()))); })(),
      backendSettingsCollection: (() { final guardedValue = map['backendSettingsCollection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayBackendSettings>(guardedValue, (value) => ApplicationGatewayBackendSettings.fromMap((value as Map).cast<String, dynamic>()))); })(),
      customErrorConfigurations: (() { final guardedValue = map['customErrorConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayCustomError>(guardedValue, (value) => ApplicationGatewayCustomError.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enableFips: (() { final guardedValue = map['enableFips']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableHttp2: (() { final guardedValue = map['enableHttp2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      firewallPolicy: (() { final guardedValue = map['firewallPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      forceFirewallPolicyAssociation: (() { final guardedValue = map['forceFirewallPolicyAssociation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      frontendIPConfigurations: (() { final guardedValue = map['frontendIPConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayFrontendIPConfiguration>(guardedValue, (value) => ApplicationGatewayFrontendIPConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      frontendPorts: (() { final guardedValue = map['frontendPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayFrontendPort>(guardedValue, (value) => ApplicationGatewayFrontendPort.fromMap((value as Map).cast<String, dynamic>()))); })(),
      gatewayIPConfigurations: (() { final guardedValue = map['gatewayIPConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayIPConfiguration>(guardedValue, (value) => ApplicationGatewayIPConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      globalConfiguration: (() { final guardedValue = map['globalConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationGatewayGlobalConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpListeners: (() { final guardedValue = map['httpListeners']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayHttpListener>(guardedValue, (value) => ApplicationGatewayHttpListener.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      listeners: (() { final guardedValue = map['listeners']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayListener>(guardedValue, (value) => ApplicationGatewayListener.fromMap((value as Map).cast<String, dynamic>()))); })(),
      loadDistributionPolicies: (() { final guardedValue = map['loadDistributionPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayLoadDistributionPolicy>(guardedValue, (value) => ApplicationGatewayLoadDistributionPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateLinkConfigurations: (() { final guardedValue = map['privateLinkConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayPrivateLinkConfiguration>(guardedValue, (value) => ApplicationGatewayPrivateLinkConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      probes: (() { final guardedValue = map['probes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayProbe>(guardedValue, (value) => ApplicationGatewayProbe.fromMap((value as Map).cast<String, dynamic>()))); })(),
      redirectConfigurations: (() { final guardedValue = map['redirectConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayRedirectConfiguration>(guardedValue, (value) => ApplicationGatewayRedirectConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      requestRoutingRules: (() { final guardedValue = map['requestRoutingRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayRequestRoutingRule>(guardedValue, (value) => ApplicationGatewayRequestRoutingRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      rewriteRuleSets: (() { final guardedValue = map['rewriteRuleSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayRewriteRuleSet>(guardedValue, (value) => ApplicationGatewayRewriteRuleSet.fromMap((value as Map).cast<String, dynamic>()))); })(),
      routingRules: (() { final guardedValue = map['routingRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayRoutingRule>(guardedValue, (value) => ApplicationGatewayRoutingRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationGatewaySku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sslCertificates: (() { final guardedValue = map['sslCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewaySslCertificate>(guardedValue, (value) => ApplicationGatewaySslCertificate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sslPolicy: (() { final guardedValue = map['sslPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationGatewaySslPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sslProfiles: (() { final guardedValue = map['sslProfiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewaySslProfile>(guardedValue, (value) => ApplicationGatewaySslProfile.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      trustedClientCertificates: (() { final guardedValue = map['trustedClientCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayTrustedClientCertificate>(guardedValue, (value) => ApplicationGatewayTrustedClientCertificate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      trustedRootCertificates: (() { final guardedValue = map['trustedRootCertificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayTrustedRootCertificate>(guardedValue, (value) => ApplicationGatewayTrustedRootCertificate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      urlPathMaps: (() { final guardedValue = map['urlPathMaps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayUrlPathMap>(guardedValue, (value) => ApplicationGatewayUrlPathMap.fromMap((value as Map).cast<String, dynamic>()))); })(),
      webApplicationFirewallConfiguration: (() { final guardedValue = map['webApplicationFirewallConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApplicationGatewayWebApplicationFirewallConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
