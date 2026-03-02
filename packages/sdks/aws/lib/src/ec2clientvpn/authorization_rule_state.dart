// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AuthorizationRule resources.
class AuthorizationRuleState {
  /// The ID of the group to which the authorization rule grants access. One of `access_group_id` or `authorize_all_groups` must be set.
  final pulumi.Input<String>? accessGroupId;
  /// Indicates whether the authorization rule grants access to all clients. One of `access_group_id` or `authorize_all_groups` must be set.
  final pulumi.Input<bool>? authorizeAllGroups;
  /// The ID of the Client VPN endpoint.
  final pulumi.Input<String>? clientVpnEndpointId;
  /// A brief description of the authorization rule.
  final pulumi.Input<String>? description;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The IPv4 or IPv6 address range, in CIDR notation, of the network to which the authorization rule applies.
  final pulumi.Input<String>? targetNetworkCidr;

  /// Creates a new [AuthorizationRuleState].
  /// [accessGroupId] The ID of the group to which the authorization rule grants access. One of `access_group_id` or `authorize_all_groups` must be set.
  /// [authorizeAllGroups] Indicates whether the authorization rule grants access to all clients. One of `access_group_id` or `authorize_all_groups` must be set.
  /// [clientVpnEndpointId] The ID of the Client VPN endpoint.
  /// [description] A brief description of the authorization rule.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [targetNetworkCidr] The IPv4 or IPv6 address range, in CIDR notation, of the network to which the authorization rule applies.
  AuthorizationRuleState({
    this.accessGroupId,
    this.authorizeAllGroups,
    this.clientVpnEndpointId,
    this.description,
    this.region,
    this.targetNetworkCidr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGroupId': ?accessGroupId,
      'authorizeAllGroups': ?authorizeAllGroups,
      'clientVpnEndpointId': ?clientVpnEndpointId,
      'description': ?description,
      'region': ?region,
      'targetNetworkCidr': ?targetNetworkCidr,
    };
  }

  factory AuthorizationRuleState.fromMap(Map<String, dynamic> map) {
    return AuthorizationRuleState(
      accessGroupId: map['accessGroupId'] == null ? null : (map['accessGroupId'] as String).input(),
      authorizeAllGroups: map['authorizeAllGroups'] == null ? null : (map['authorizeAllGroups'] as bool).input(),
      clientVpnEndpointId: map['clientVpnEndpointId'] == null ? null : (map['clientVpnEndpointId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      targetNetworkCidr: map['targetNetworkCidr'] == null ? null : (map['targetNetworkCidr'] as String).input(),
    );
  }
}

