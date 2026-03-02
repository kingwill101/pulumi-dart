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
  final pulumi.Input<String>? applicationGatewayName;
  /// Authentication certificates of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewayAuthenticationCertificate>>? authenticationCertificates;
  /// Autoscale Configuration.
  final pulumi.Input<ApplicationGatewayAutoscaleConfiguration>? autoscaleConfiguration;
  /// Backend address pool of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewayBackendAddressPool>>? backendAddressPools;
  /// Backend http settings of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewayBackendHttpSettings>>? backendHttpSettingsCollection;
  /// Backend settings of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewayBackendSettings>>? backendSettingsCollection;
  /// Custom error configurations of the application gateway resource.
  final pulumi.Input<List<ApplicationGatewayCustomError>>? customErrorConfigurations;
  /// Whether FIPS is enabled on the application gateway resource.
  final pulumi.Input<bool>? enableFips;
  /// Whether HTTP2 is enabled on the application gateway resource.
  final pulumi.Input<bool>? enableHttp2;
  /// Reference to the FirewallPolicy resource.
  final pulumi.Input<SubResource>? firewallPolicy;
  /// If true, associates a firewall policy with an application gateway regardless whether the policy differs from the WAF Config.
  final pulumi.Input<bool>? forceFirewallPolicyAssociation;
  /// Frontend IP addresses of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewayFrontendIPConfiguration>>? frontendIPConfigurations;
  /// Frontend ports of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewayFrontendPort>>? frontendPorts;
  /// Subnets of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewayIPConfiguration>>? gatewayIPConfigurations;
  /// Global Configuration.
  final pulumi.Input<ApplicationGatewayGlobalConfiguration>? globalConfiguration;
  /// Http listeners of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewayHttpListener>>? httpListeners;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The identity of the application gateway, if configured.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// Listeners of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewayListener>>? listeners;
  /// Load distribution policies of the application gateway resource.
  final pulumi.Input<List<ApplicationGatewayLoadDistributionPolicy>>? loadDistributionPolicies;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// PrivateLink configurations on application gateway.
  final pulumi.Input<List<ApplicationGatewayPrivateLinkConfiguration>>? privateLinkConfigurations;
  /// Probes of the application gateway resource.
  final pulumi.Input<List<ApplicationGatewayProbe>>? probes;
  /// Redirect configurations of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewayRedirectConfiguration>>? redirectConfigurations;
  /// Request routing rules of the application gateway resource.
  final pulumi.Input<List<ApplicationGatewayRequestRoutingRule>>? requestRoutingRules;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Rewrite rules for the application gateway resource.
  final pulumi.Input<List<ApplicationGatewayRewriteRuleSet>>? rewriteRuleSets;
  /// Routing rules of the application gateway resource.
  final pulumi.Input<List<ApplicationGatewayRoutingRule>>? routingRules;
  /// SKU of the application gateway resource.
  final pulumi.Input<ApplicationGatewaySku>? sku;
  /// SSL certificates of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewaySslCertificate>>? sslCertificates;
  /// SSL policy of the application gateway resource.
  final pulumi.Input<ApplicationGatewaySslPolicy>? sslPolicy;
  /// SSL profiles of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewaySslProfile>>? sslProfiles;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Trusted client certificates of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewayTrustedClientCertificate>>? trustedClientCertificates;
  /// Trusted Root certificates of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewayTrustedRootCertificate>>? trustedRootCertificates;
  /// URL path map of the application gateway resource. For default limits, see [Application Gateway limits](https://docs.microsoft.com/azure/azure-subscription-service-limits#application-gateway-limits).
  final pulumi.Input<List<ApplicationGatewayUrlPathMap>>? urlPathMaps;
  /// Web application firewall configuration.
  final pulumi.Input<ApplicationGatewayWebApplicationFirewallConfiguration>? webApplicationFirewallConfiguration;
  /// A list of availability zones denoting where the resource needs to come from.
  final pulumi.Input<List<String>>? zones;

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
  ApplicationGatewayArgs({
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
      applicationGatewayName: map['applicationGatewayName'] == null ? null : (map['applicationGatewayName']! as String).input(),
      authenticationCertificates: map['authenticationCertificates'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayAuthenticationCertificate>(map['authenticationCertificates']!, (value) => ApplicationGatewayAuthenticationCertificate.fromMap((value as Map).cast<String, dynamic>()))).input(),
      autoscaleConfiguration: map['autoscaleConfiguration'] == null ? null : (ApplicationGatewayAutoscaleConfiguration.fromMap((map['autoscaleConfiguration']! as Map).cast<String, dynamic>())).input(),
      backendAddressPools: map['backendAddressPools'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayBackendAddressPool>(map['backendAddressPools']!, (value) => ApplicationGatewayBackendAddressPool.fromMap((value as Map).cast<String, dynamic>()))).input(),
      backendHttpSettingsCollection: map['backendHttpSettingsCollection'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayBackendHttpSettings>(map['backendHttpSettingsCollection']!, (value) => ApplicationGatewayBackendHttpSettings.fromMap((value as Map).cast<String, dynamic>()))).input(),
      backendSettingsCollection: map['backendSettingsCollection'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayBackendSettings>(map['backendSettingsCollection']!, (value) => ApplicationGatewayBackendSettings.fromMap((value as Map).cast<String, dynamic>()))).input(),
      customErrorConfigurations: map['customErrorConfigurations'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayCustomError>(map['customErrorConfigurations']!, (value) => ApplicationGatewayCustomError.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enableFips: map['enableFips'] == null ? null : (map['enableFips']! as bool).input(),
      enableHttp2: map['enableHttp2'] == null ? null : (map['enableHttp2']! as bool).input(),
      firewallPolicy: map['firewallPolicy'] == null ? null : (SubResource.fromMap((map['firewallPolicy']! as Map).cast<String, dynamic>())).input(),
      forceFirewallPolicyAssociation: map['forceFirewallPolicyAssociation'] == null ? null : (map['forceFirewallPolicyAssociation']! as bool).input(),
      frontendIPConfigurations: map['frontendIPConfigurations'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayFrontendIPConfiguration>(map['frontendIPConfigurations']!, (value) => ApplicationGatewayFrontendIPConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      frontendPorts: map['frontendPorts'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayFrontendPort>(map['frontendPorts']!, (value) => ApplicationGatewayFrontendPort.fromMap((value as Map).cast<String, dynamic>()))).input(),
      gatewayIPConfigurations: map['gatewayIPConfigurations'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayIPConfiguration>(map['gatewayIPConfigurations']!, (value) => ApplicationGatewayIPConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      globalConfiguration: map['globalConfiguration'] == null ? null : (ApplicationGatewayGlobalConfiguration.fromMap((map['globalConfiguration']! as Map).cast<String, dynamic>())).input(),
      httpListeners: map['httpListeners'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayHttpListener>(map['httpListeners']!, (value) => ApplicationGatewayHttpListener.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      identity: map['identity'] == null ? null : (ManagedServiceIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      listeners: map['listeners'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayListener>(map['listeners']!, (value) => ApplicationGatewayListener.fromMap((value as Map).cast<String, dynamic>()))).input(),
      loadDistributionPolicies: map['loadDistributionPolicies'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayLoadDistributionPolicy>(map['loadDistributionPolicies']!, (value) => ApplicationGatewayLoadDistributionPolicy.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      privateLinkConfigurations: map['privateLinkConfigurations'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayPrivateLinkConfiguration>(map['privateLinkConfigurations']!, (value) => ApplicationGatewayPrivateLinkConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      probes: map['probes'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayProbe>(map['probes']!, (value) => ApplicationGatewayProbe.fromMap((value as Map).cast<String, dynamic>()))).input(),
      redirectConfigurations: map['redirectConfigurations'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayRedirectConfiguration>(map['redirectConfigurations']!, (value) => ApplicationGatewayRedirectConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      requestRoutingRules: map['requestRoutingRules'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayRequestRoutingRule>(map['requestRoutingRules']!, (value) => ApplicationGatewayRequestRoutingRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      rewriteRuleSets: map['rewriteRuleSets'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayRewriteRuleSet>(map['rewriteRuleSets']!, (value) => ApplicationGatewayRewriteRuleSet.fromMap((value as Map).cast<String, dynamic>()))).input(),
      routingRules: map['routingRules'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayRoutingRule>(map['routingRules']!, (value) => ApplicationGatewayRoutingRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sku: map['sku'] == null ? null : (ApplicationGatewaySku.fromMap((map['sku']! as Map).cast<String, dynamic>())).input(),
      sslCertificates: map['sslCertificates'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewaySslCertificate>(map['sslCertificates']!, (value) => ApplicationGatewaySslCertificate.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sslPolicy: map['sslPolicy'] == null ? null : (ApplicationGatewaySslPolicy.fromMap((map['sslPolicy']! as Map).cast<String, dynamic>())).input(),
      sslProfiles: map['sslProfiles'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewaySslProfile>(map['sslProfiles']!, (value) => ApplicationGatewaySslProfile.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      trustedClientCertificates: map['trustedClientCertificates'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayTrustedClientCertificate>(map['trustedClientCertificates']!, (value) => ApplicationGatewayTrustedClientCertificate.fromMap((value as Map).cast<String, dynamic>()))).input(),
      trustedRootCertificates: map['trustedRootCertificates'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayTrustedRootCertificate>(map['trustedRootCertificates']!, (value) => ApplicationGatewayTrustedRootCertificate.fromMap((value as Map).cast<String, dynamic>()))).input(),
      urlPathMaps: map['urlPathMaps'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayUrlPathMap>(map['urlPathMaps']!, (value) => ApplicationGatewayUrlPathMap.fromMap((value as Map).cast<String, dynamic>()))).input(),
      webApplicationFirewallConfiguration: map['webApplicationFirewallConfiguration'] == null ? null : (ApplicationGatewayWebApplicationFirewallConfiguration.fromMap((map['webApplicationFirewallConfiguration']! as Map).cast<String, dynamic>())).input(),
      zones: map['zones'] == null ? null : ((map['zones']! as List).cast<String>()).input(),
    );
  }
}

