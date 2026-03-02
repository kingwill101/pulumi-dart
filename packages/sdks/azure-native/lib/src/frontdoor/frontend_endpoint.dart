// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontend_endpoint_update_parameters_web_application_firewall_policy_link.dart';

/// A frontend endpoint used for routing.
class FrontendEndpoint {
  /// The host name of the frontendEndpoint. Must be a domain name.
  final pulumi.Input<String>? hostName;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource name.
  final pulumi.Input<String>? name;
  /// Whether to allow session affinity on this host. Valid options are 'Enabled' or 'Disabled'
  final pulumi.Input<String>? sessionAffinityEnabledState;
  /// UNUSED. This field will be ignored. The TTL to use in seconds for session affinity, if applicable.
  final pulumi.Input<int>? sessionAffinityTtlSeconds;
  /// Defines the Web Application Firewall policy for each host (if applicable)
  final pulumi.Input<FrontendEndpointUpdateParametersWebApplicationFirewallPolicyLink>? webApplicationFirewallPolicyLink;

  /// Creates a new [FrontendEndpoint].
  /// [hostName] The host name of the frontendEndpoint. Must be a domain name.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [sessionAffinityEnabledState] Whether to allow session affinity on this host. Valid options are 'Enabled' or 'Disabled'
  /// [sessionAffinityTtlSeconds] UNUSED. This field will be ignored. The TTL to use in seconds for session affinity, if applicable.
  /// [webApplicationFirewallPolicyLink] Defines the Web Application Firewall policy for each host (if applicable)
  FrontendEndpoint({
    this.hostName,
    this.id,
    this.name,
    this.sessionAffinityEnabledState,
    this.sessionAffinityTtlSeconds,
    this.webApplicationFirewallPolicyLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostName': ?hostName,
      'id': ?id,
      'name': ?name,
      'sessionAffinityEnabledState': ?sessionAffinityEnabledState,
      'sessionAffinityTtlSeconds': ?sessionAffinityTtlSeconds,
      'webApplicationFirewallPolicyLink': ?pulumi.Input.mapOptionalInputValue<FrontendEndpointUpdateParametersWebApplicationFirewallPolicyLink, Map<String, dynamic>>(webApplicationFirewallPolicyLink, (value) => value.toMap()),
    };
  }

  factory FrontendEndpoint.fromMap(Map<String, dynamic> map) {
    return FrontendEndpoint(
      hostName: map['hostName'] == null ? null : (map['hostName']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      sessionAffinityEnabledState: map['sessionAffinityEnabledState'] == null ? null : (map['sessionAffinityEnabledState']! as String).input(),
      sessionAffinityTtlSeconds: map['sessionAffinityTtlSeconds'] == null ? null : (map['sessionAffinityTtlSeconds']! as int).input(),
      webApplicationFirewallPolicyLink: map['webApplicationFirewallPolicyLink'] == null ? null : (FrontendEndpointUpdateParametersWebApplicationFirewallPolicyLink.fromMap((map['webApplicationFirewallPolicyLink']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

