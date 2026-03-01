// ignore_for_file: unused_element, unnecessary_cast


class FrontdoorFrontendEndpoint {
  /// Specifies the host name of the `frontend_endpoint`. Must be a domain name. In order to use a name.azurefd.net domain, the name value must match the Front Door name.
  final String hostName;
  /// The ID of the FrontDoor.
  final String? id;
  /// Specifies the name of the `frontend_endpoint`.
  final String name;
  /// Whether to allow session affinity on this host. Valid options are `true` or `false` Defaults to `false`.
  final bool? sessionAffinityEnabled;
  /// The TTL to use in seconds for session affinity, if applicable. Defaults to `0`.
  final int? sessionAffinityTtlSeconds;
  /// Defines the Web Application Firewall policy `ID` for each host.
  final String? webApplicationFirewallPolicyLinkId;

  /// Creates a new [FrontdoorFrontendEndpoint].
  /// [hostName] Specifies the host name of the `frontend_endpoint`. Must be a domain name. In order to use a name.azurefd.net domain, the name value must match the Front Door name.
  /// [id] The ID of the FrontDoor.
  /// [name] Specifies the name of the `frontend_endpoint`.
  /// [sessionAffinityEnabled] Whether to allow session affinity on this host. Valid options are `true` or `false` Defaults to `false`.
  /// [sessionAffinityTtlSeconds] The TTL to use in seconds for session affinity, if applicable. Defaults to `0`.
  /// [webApplicationFirewallPolicyLinkId] Defines the Web Application Firewall policy `ID` for each host.
  FrontdoorFrontendEndpoint({
    required this.hostName,
    this.id,
    required this.name,
    this.sessionAffinityEnabled,
    this.sessionAffinityTtlSeconds,
    this.webApplicationFirewallPolicyLinkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostName': hostName,
      'id': ?id,
      'name': name,
      'sessionAffinityEnabled': ?sessionAffinityEnabled,
      'sessionAffinityTtlSeconds': ?sessionAffinityTtlSeconds,
      'webApplicationFirewallPolicyLinkId': ?webApplicationFirewallPolicyLinkId,
    };
  }

  factory FrontdoorFrontendEndpoint.fromMap(Map<String, dynamic> map) {
    return FrontdoorFrontendEndpoint(
      hostName: map['hostName'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] as String,
      sessionAffinityEnabled: map['sessionAffinityEnabled'] == null ? null : map['sessionAffinityEnabled'] as bool,
      sessionAffinityTtlSeconds: map['sessionAffinityTtlSeconds'] == null ? null : map['sessionAffinityTtlSeconds'] as int,
      webApplicationFirewallPolicyLinkId: map['webApplicationFirewallPolicyLinkId'] == null ? null : map['webApplicationFirewallPolicyLinkId'] as String,
    );
  }
}

