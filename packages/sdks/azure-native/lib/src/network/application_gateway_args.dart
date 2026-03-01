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
    pulumi.Output<String>? applicationGatewayName,
    pulumi.Output<List<ApplicationGatewayAuthenticationCertificate>>? authenticationCertificates,
    pulumi.Output<ApplicationGatewayAutoscaleConfiguration>? autoscaleConfiguration,
    pulumi.Output<List<ApplicationGatewayBackendAddressPool>>? backendAddressPools,
    pulumi.Output<List<ApplicationGatewayBackendHttpSettings>>? backendHttpSettingsCollection,
    pulumi.Output<List<ApplicationGatewayBackendSettings>>? backendSettingsCollection,
    pulumi.Output<List<ApplicationGatewayCustomError>>? customErrorConfigurations,
    pulumi.Output<bool>? enableFips,
    pulumi.Output<bool>? enableHttp2,
    pulumi.Output<SubResource>? firewallPolicy,
    pulumi.Output<bool>? forceFirewallPolicyAssociation,
    pulumi.Output<List<ApplicationGatewayFrontendIPConfiguration>>? frontendIPConfigurations,
    pulumi.Output<List<ApplicationGatewayFrontendPort>>? frontendPorts,
    pulumi.Output<List<ApplicationGatewayIPConfiguration>>? gatewayIPConfigurations,
    pulumi.Output<ApplicationGatewayGlobalConfiguration>? globalConfiguration,
    pulumi.Output<List<ApplicationGatewayHttpListener>>? httpListeners,
    pulumi.Output<String>? id,
    pulumi.Output<ManagedServiceIdentity>? identity,
    pulumi.Output<List<ApplicationGatewayListener>>? listeners,
    pulumi.Output<List<ApplicationGatewayLoadDistributionPolicy>>? loadDistributionPolicies,
    pulumi.Output<String>? location,
    pulumi.Output<List<ApplicationGatewayPrivateLinkConfiguration>>? privateLinkConfigurations,
    pulumi.Output<List<ApplicationGatewayProbe>>? probes,
    pulumi.Output<List<ApplicationGatewayRedirectConfiguration>>? redirectConfigurations,
    pulumi.Output<List<ApplicationGatewayRequestRoutingRule>>? requestRoutingRules,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<List<ApplicationGatewayRewriteRuleSet>>? rewriteRuleSets,
    pulumi.Output<List<ApplicationGatewayRoutingRule>>? routingRules,
    pulumi.Output<ApplicationGatewaySku>? sku,
    pulumi.Output<List<ApplicationGatewaySslCertificate>>? sslCertificates,
    pulumi.Output<ApplicationGatewaySslPolicy>? sslPolicy,
    pulumi.Output<List<ApplicationGatewaySslProfile>>? sslProfiles,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<ApplicationGatewayTrustedClientCertificate>>? trustedClientCertificates,
    pulumi.Output<List<ApplicationGatewayTrustedRootCertificate>>? trustedRootCertificates,
    pulumi.Output<List<ApplicationGatewayUrlPathMap>>? urlPathMaps,
    pulumi.Output<ApplicationGatewayWebApplicationFirewallConfiguration>? webApplicationFirewallConfiguration,
    pulumi.Output<List<String>>? zones,
  }) :
      applicationGatewayName = pulumi.Input.asOptionalInput<String>(applicationGatewayName),
      authenticationCertificates = pulumi.Input.asOptionalInput<List<ApplicationGatewayAuthenticationCertificate>>(authenticationCertificates),
      autoscaleConfiguration = pulumi.Input.asOptionalInput<ApplicationGatewayAutoscaleConfiguration>(autoscaleConfiguration),
      backendAddressPools = pulumi.Input.asOptionalInput<List<ApplicationGatewayBackendAddressPool>>(backendAddressPools),
      backendHttpSettingsCollection = pulumi.Input.asOptionalInput<List<ApplicationGatewayBackendHttpSettings>>(backendHttpSettingsCollection),
      backendSettingsCollection = pulumi.Input.asOptionalInput<List<ApplicationGatewayBackendSettings>>(backendSettingsCollection),
      customErrorConfigurations = pulumi.Input.asOptionalInput<List<ApplicationGatewayCustomError>>(customErrorConfigurations),
      enableFips = pulumi.Input.asOptionalInput<bool>(enableFips),
      enableHttp2 = pulumi.Input.asOptionalInput<bool>(enableHttp2),
      firewallPolicy = pulumi.Input.asOptionalInput<SubResource>(firewallPolicy),
      forceFirewallPolicyAssociation = pulumi.Input.asOptionalInput<bool>(forceFirewallPolicyAssociation),
      frontendIPConfigurations = pulumi.Input.asOptionalInput<List<ApplicationGatewayFrontendIPConfiguration>>(frontendIPConfigurations),
      frontendPorts = pulumi.Input.asOptionalInput<List<ApplicationGatewayFrontendPort>>(frontendPorts),
      gatewayIPConfigurations = pulumi.Input.asOptionalInput<List<ApplicationGatewayIPConfiguration>>(gatewayIPConfigurations),
      globalConfiguration = pulumi.Input.asOptionalInput<ApplicationGatewayGlobalConfiguration>(globalConfiguration),
      httpListeners = pulumi.Input.asOptionalInput<List<ApplicationGatewayHttpListener>>(httpListeners),
      id = pulumi.Input.asOptionalInput<String>(id),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      listeners = pulumi.Input.asOptionalInput<List<ApplicationGatewayListener>>(listeners),
      loadDistributionPolicies = pulumi.Input.asOptionalInput<List<ApplicationGatewayLoadDistributionPolicy>>(loadDistributionPolicies),
      location = pulumi.Input.asOptionalInput<String>(location),
      privateLinkConfigurations = pulumi.Input.asOptionalInput<List<ApplicationGatewayPrivateLinkConfiguration>>(privateLinkConfigurations),
      probes = pulumi.Input.asOptionalInput<List<ApplicationGatewayProbe>>(probes),
      redirectConfigurations = pulumi.Input.asOptionalInput<List<ApplicationGatewayRedirectConfiguration>>(redirectConfigurations),
      requestRoutingRules = pulumi.Input.asOptionalInput<List<ApplicationGatewayRequestRoutingRule>>(requestRoutingRules),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      rewriteRuleSets = pulumi.Input.asOptionalInput<List<ApplicationGatewayRewriteRuleSet>>(rewriteRuleSets),
      routingRules = pulumi.Input.asOptionalInput<List<ApplicationGatewayRoutingRule>>(routingRules),
      sku = pulumi.Input.asOptionalInput<ApplicationGatewaySku>(sku),
      sslCertificates = pulumi.Input.asOptionalInput<List<ApplicationGatewaySslCertificate>>(sslCertificates),
      sslPolicy = pulumi.Input.asOptionalInput<ApplicationGatewaySslPolicy>(sslPolicy),
      sslProfiles = pulumi.Input.asOptionalInput<List<ApplicationGatewaySslProfile>>(sslProfiles),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      trustedClientCertificates = pulumi.Input.asOptionalInput<List<ApplicationGatewayTrustedClientCertificate>>(trustedClientCertificates),
      trustedRootCertificates = pulumi.Input.asOptionalInput<List<ApplicationGatewayTrustedRootCertificate>>(trustedRootCertificates),
      urlPathMaps = pulumi.Input.asOptionalInput<List<ApplicationGatewayUrlPathMap>>(urlPathMaps),
      webApplicationFirewallConfiguration = pulumi.Input.asOptionalInput<ApplicationGatewayWebApplicationFirewallConfiguration>(webApplicationFirewallConfiguration),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

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
      applicationGatewayName: map['applicationGatewayName'] == null ? null : pulumi.Output.create<String>(map['applicationGatewayName'] as String),
      authenticationCertificates: map['authenticationCertificates'] == null ? null : pulumi.Output.create<List<ApplicationGatewayAuthenticationCertificate>>(pulumi.Input.decodeList<ApplicationGatewayAuthenticationCertificate>(map['authenticationCertificates'], (value) => ApplicationGatewayAuthenticationCertificate.fromMap((value as Map).cast<String, dynamic>()))),
      autoscaleConfiguration: map['autoscaleConfiguration'] == null ? null : pulumi.Output.create<ApplicationGatewayAutoscaleConfiguration>(ApplicationGatewayAutoscaleConfiguration.fromMap((map['autoscaleConfiguration'] as Map).cast<String, dynamic>())),
      backendAddressPools: map['backendAddressPools'] == null ? null : pulumi.Output.create<List<ApplicationGatewayBackendAddressPool>>(pulumi.Input.decodeList<ApplicationGatewayBackendAddressPool>(map['backendAddressPools'], (value) => ApplicationGatewayBackendAddressPool.fromMap((value as Map).cast<String, dynamic>()))),
      backendHttpSettingsCollection: map['backendHttpSettingsCollection'] == null ? null : pulumi.Output.create<List<ApplicationGatewayBackendHttpSettings>>(pulumi.Input.decodeList<ApplicationGatewayBackendHttpSettings>(map['backendHttpSettingsCollection'], (value) => ApplicationGatewayBackendHttpSettings.fromMap((value as Map).cast<String, dynamic>()))),
      backendSettingsCollection: map['backendSettingsCollection'] == null ? null : pulumi.Output.create<List<ApplicationGatewayBackendSettings>>(pulumi.Input.decodeList<ApplicationGatewayBackendSettings>(map['backendSettingsCollection'], (value) => ApplicationGatewayBackendSettings.fromMap((value as Map).cast<String, dynamic>()))),
      customErrorConfigurations: map['customErrorConfigurations'] == null ? null : pulumi.Output.create<List<ApplicationGatewayCustomError>>(pulumi.Input.decodeList<ApplicationGatewayCustomError>(map['customErrorConfigurations'], (value) => ApplicationGatewayCustomError.fromMap((value as Map).cast<String, dynamic>()))),
      enableFips: map['enableFips'] == null ? null : pulumi.Output.create<bool>(map['enableFips'] as bool),
      enableHttp2: map['enableHttp2'] == null ? null : pulumi.Output.create<bool>(map['enableHttp2'] as bool),
      firewallPolicy: map['firewallPolicy'] == null ? null : pulumi.Output.create<SubResource>(SubResource.fromMap((map['firewallPolicy'] as Map).cast<String, dynamic>())),
      forceFirewallPolicyAssociation: map['forceFirewallPolicyAssociation'] == null ? null : pulumi.Output.create<bool>(map['forceFirewallPolicyAssociation'] as bool),
      frontendIPConfigurations: map['frontendIPConfigurations'] == null ? null : pulumi.Output.create<List<ApplicationGatewayFrontendIPConfiguration>>(pulumi.Input.decodeList<ApplicationGatewayFrontendIPConfiguration>(map['frontendIPConfigurations'], (value) => ApplicationGatewayFrontendIPConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      frontendPorts: map['frontendPorts'] == null ? null : pulumi.Output.create<List<ApplicationGatewayFrontendPort>>(pulumi.Input.decodeList<ApplicationGatewayFrontendPort>(map['frontendPorts'], (value) => ApplicationGatewayFrontendPort.fromMap((value as Map).cast<String, dynamic>()))),
      gatewayIPConfigurations: map['gatewayIPConfigurations'] == null ? null : pulumi.Output.create<List<ApplicationGatewayIPConfiguration>>(pulumi.Input.decodeList<ApplicationGatewayIPConfiguration>(map['gatewayIPConfigurations'], (value) => ApplicationGatewayIPConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      globalConfiguration: map['globalConfiguration'] == null ? null : pulumi.Output.create<ApplicationGatewayGlobalConfiguration>(ApplicationGatewayGlobalConfiguration.fromMap((map['globalConfiguration'] as Map).cast<String, dynamic>())),
      httpListeners: map['httpListeners'] == null ? null : pulumi.Output.create<List<ApplicationGatewayHttpListener>>(pulumi.Input.decodeList<ApplicationGatewayHttpListener>(map['httpListeners'], (value) => ApplicationGatewayHttpListener.fromMap((value as Map).cast<String, dynamic>()))),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedServiceIdentity>(ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      listeners: map['listeners'] == null ? null : pulumi.Output.create<List<ApplicationGatewayListener>>(pulumi.Input.decodeList<ApplicationGatewayListener>(map['listeners'], (value) => ApplicationGatewayListener.fromMap((value as Map).cast<String, dynamic>()))),
      loadDistributionPolicies: map['loadDistributionPolicies'] == null ? null : pulumi.Output.create<List<ApplicationGatewayLoadDistributionPolicy>>(pulumi.Input.decodeList<ApplicationGatewayLoadDistributionPolicy>(map['loadDistributionPolicies'], (value) => ApplicationGatewayLoadDistributionPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      privateLinkConfigurations: map['privateLinkConfigurations'] == null ? null : pulumi.Output.create<List<ApplicationGatewayPrivateLinkConfiguration>>(pulumi.Input.decodeList<ApplicationGatewayPrivateLinkConfiguration>(map['privateLinkConfigurations'], (value) => ApplicationGatewayPrivateLinkConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      probes: map['probes'] == null ? null : pulumi.Output.create<List<ApplicationGatewayProbe>>(pulumi.Input.decodeList<ApplicationGatewayProbe>(map['probes'], (value) => ApplicationGatewayProbe.fromMap((value as Map).cast<String, dynamic>()))),
      redirectConfigurations: map['redirectConfigurations'] == null ? null : pulumi.Output.create<List<ApplicationGatewayRedirectConfiguration>>(pulumi.Input.decodeList<ApplicationGatewayRedirectConfiguration>(map['redirectConfigurations'], (value) => ApplicationGatewayRedirectConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      requestRoutingRules: map['requestRoutingRules'] == null ? null : pulumi.Output.create<List<ApplicationGatewayRequestRoutingRule>>(pulumi.Input.decodeList<ApplicationGatewayRequestRoutingRule>(map['requestRoutingRules'], (value) => ApplicationGatewayRequestRoutingRule.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      rewriteRuleSets: map['rewriteRuleSets'] == null ? null : pulumi.Output.create<List<ApplicationGatewayRewriteRuleSet>>(pulumi.Input.decodeList<ApplicationGatewayRewriteRuleSet>(map['rewriteRuleSets'], (value) => ApplicationGatewayRewriteRuleSet.fromMap((value as Map).cast<String, dynamic>()))),
      routingRules: map['routingRules'] == null ? null : pulumi.Output.create<List<ApplicationGatewayRoutingRule>>(pulumi.Input.decodeList<ApplicationGatewayRoutingRule>(map['routingRules'], (value) => ApplicationGatewayRoutingRule.fromMap((value as Map).cast<String, dynamic>()))),
      sku: map['sku'] == null ? null : pulumi.Output.create<ApplicationGatewaySku>(ApplicationGatewaySku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      sslCertificates: map['sslCertificates'] == null ? null : pulumi.Output.create<List<ApplicationGatewaySslCertificate>>(pulumi.Input.decodeList<ApplicationGatewaySslCertificate>(map['sslCertificates'], (value) => ApplicationGatewaySslCertificate.fromMap((value as Map).cast<String, dynamic>()))),
      sslPolicy: map['sslPolicy'] == null ? null : pulumi.Output.create<ApplicationGatewaySslPolicy>(ApplicationGatewaySslPolicy.fromMap((map['sslPolicy'] as Map).cast<String, dynamic>())),
      sslProfiles: map['sslProfiles'] == null ? null : pulumi.Output.create<List<ApplicationGatewaySslProfile>>(pulumi.Input.decodeList<ApplicationGatewaySslProfile>(map['sslProfiles'], (value) => ApplicationGatewaySslProfile.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      trustedClientCertificates: map['trustedClientCertificates'] == null ? null : pulumi.Output.create<List<ApplicationGatewayTrustedClientCertificate>>(pulumi.Input.decodeList<ApplicationGatewayTrustedClientCertificate>(map['trustedClientCertificates'], (value) => ApplicationGatewayTrustedClientCertificate.fromMap((value as Map).cast<String, dynamic>()))),
      trustedRootCertificates: map['trustedRootCertificates'] == null ? null : pulumi.Output.create<List<ApplicationGatewayTrustedRootCertificate>>(pulumi.Input.decodeList<ApplicationGatewayTrustedRootCertificate>(map['trustedRootCertificates'], (value) => ApplicationGatewayTrustedRootCertificate.fromMap((value as Map).cast<String, dynamic>()))),
      urlPathMaps: map['urlPathMaps'] == null ? null : pulumi.Output.create<List<ApplicationGatewayUrlPathMap>>(pulumi.Input.decodeList<ApplicationGatewayUrlPathMap>(map['urlPathMaps'], (value) => ApplicationGatewayUrlPathMap.fromMap((value as Map).cast<String, dynamic>()))),
      webApplicationFirewallConfiguration: map['webApplicationFirewallConfiguration'] == null ? null : pulumi.Output.create<ApplicationGatewayWebApplicationFirewallConfiguration>(ApplicationGatewayWebApplicationFirewallConfiguration.fromMap((map['webApplicationFirewallConfiguration'] as Map).cast<String, dynamic>())),
      zones: map['zones'] == null ? null : pulumi.Output.create<List<String>>((map['zones'] as List).cast<String>()),
    );
  }
}

