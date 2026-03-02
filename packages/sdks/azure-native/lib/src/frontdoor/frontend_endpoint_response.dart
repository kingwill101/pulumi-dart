// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_https_configuration_response.dart';
import 'frontend_endpoint_update_parameters_response_web_application_firewall_policy_link.dart';

/// A frontend endpoint used for routing.
class FrontendEndpointResponse {
  /// The configuration specifying how to enable HTTPS
  final pulumi.Input<CustomHttpsConfigurationResponse> customHttpsConfiguration;
  /// Provisioning status of Custom Https of the frontendEndpoint.
  final pulumi.Input<String> customHttpsProvisioningState;
  /// Provisioning substate shows the progress of custom HTTPS enabling/disabling process step by step.
  final pulumi.Input<String> customHttpsProvisioningSubstate;
  /// The host name of the frontendEndpoint. Must be a domain name.
  final pulumi.Input<String>? hostName;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource name.
  final pulumi.Input<String>? name;
  /// Resource status.
  final pulumi.Input<String> resourceState;
  /// Whether to allow session affinity on this host. Valid options are 'Enabled' or 'Disabled'
  final pulumi.Input<String>? sessionAffinityEnabledState;
  /// UNUSED. This field will be ignored. The TTL to use in seconds for session affinity, if applicable.
  final pulumi.Input<int>? sessionAffinityTtlSeconds;
  /// Resource type.
  final pulumi.Input<String> type;
  /// Defines the Web Application Firewall policy for each host (if applicable)
  final pulumi.Input<FrontendEndpointUpdateParametersResponseWebApplicationFirewallPolicyLink>? webApplicationFirewallPolicyLink;

  /// Creates a new [FrontendEndpointResponse].
  /// [customHttpsConfiguration] The configuration specifying how to enable HTTPS
  /// [customHttpsProvisioningState] Provisioning status of Custom Https of the frontendEndpoint.
  /// [customHttpsProvisioningSubstate] Provisioning substate shows the progress of custom HTTPS enabling/disabling process step by step.
  /// [hostName] The host name of the frontendEndpoint. Must be a domain name.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [resourceState] Resource status.
  /// [sessionAffinityEnabledState] Whether to allow session affinity on this host. Valid options are 'Enabled' or 'Disabled'
  /// [sessionAffinityTtlSeconds] UNUSED. This field will be ignored. The TTL to use in seconds for session affinity, if applicable.
  /// [type] Resource type.
  /// [webApplicationFirewallPolicyLink] Defines the Web Application Firewall policy for each host (if applicable)
  FrontendEndpointResponse({
    required this.customHttpsConfiguration,
    required this.customHttpsProvisioningState,
    required this.customHttpsProvisioningSubstate,
    this.hostName,
    this.id,
    this.name,
    required this.resourceState,
    this.sessionAffinityEnabledState,
    this.sessionAffinityTtlSeconds,
    required this.type,
    this.webApplicationFirewallPolicyLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customHttpsConfiguration': pulumi.Input.mapInputValue<CustomHttpsConfigurationResponse, Map<String, dynamic>>(customHttpsConfiguration, (value) => value.toMap()),
      'customHttpsProvisioningState': customHttpsProvisioningState,
      'customHttpsProvisioningSubstate': customHttpsProvisioningSubstate,
      'hostName': ?hostName,
      'id': ?id,
      'name': ?name,
      'resourceState': resourceState,
      'sessionAffinityEnabledState': ?sessionAffinityEnabledState,
      'sessionAffinityTtlSeconds': ?sessionAffinityTtlSeconds,
      'type': type,
      'webApplicationFirewallPolicyLink': ?pulumi.Input.mapOptionalInputValue<FrontendEndpointUpdateParametersResponseWebApplicationFirewallPolicyLink, Map<String, dynamic>>(webApplicationFirewallPolicyLink, (value) => value.toMap()),
    };
  }

  factory FrontendEndpointResponse.fromMap(Map<String, dynamic> map) {
    return FrontendEndpointResponse(
      customHttpsConfiguration: (CustomHttpsConfigurationResponse.fromMap((map['customHttpsConfiguration'] as Map).cast<String, dynamic>())).input(),
      customHttpsProvisioningState: (map['customHttpsProvisioningState'] as String).input(),
      customHttpsProvisioningSubstate: (map['customHttpsProvisioningSubstate'] as String).input(),
      hostName: map['hostName'] == null ? null : (map['hostName']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceState: (map['resourceState'] as String).input(),
      sessionAffinityEnabledState: map['sessionAffinityEnabledState'] == null ? null : (map['sessionAffinityEnabledState']! as String).input(),
      sessionAffinityTtlSeconds: map['sessionAffinityTtlSeconds'] == null ? null : (map['sessionAffinityTtlSeconds']! as int).input(),
      type: (map['type'] as String).input(),
      webApplicationFirewallPolicyLink: map['webApplicationFirewallPolicyLink'] == null ? null : (FrontendEndpointUpdateParametersResponseWebApplicationFirewallPolicyLink.fromMap((map['webApplicationFirewallPolicyLink']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

