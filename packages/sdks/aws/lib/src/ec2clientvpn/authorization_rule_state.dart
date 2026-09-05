// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AuthorizationRule resources.
class AuthorizationRuleState {
  /// The ID of the group to which the authorization rule grants access. One of `accessGroupId` or `authorizeAllGroups` must be set.
  final pulumi.Input<String?>? accessGroupId;
  /// Indicates whether the authorization rule grants access to all clients. One of `accessGroupId` or `authorizeAllGroups` must be set.
  final pulumi.Input<bool?>? authorizeAllGroups;
  /// The ID of the Client VPN endpoint.
  final pulumi.Input<String?>? clientVpnEndpointId;
  /// A brief description of the authorization rule.
  final pulumi.Input<String?>? description;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The IPv4 or IPv6 address range, in CIDR notation, of the network to which the authorization rule applies.
  final pulumi.Input<String?>? targetNetworkCidr;

  /// Creates a new [AuthorizationRuleState].
  /// [accessGroupId] The ID of the group to which the authorization rule grants access. One of `accessGroupId` or `authorizeAllGroups` must be set.
  /// [authorizeAllGroups] Indicates whether the authorization rule grants access to all clients. One of `accessGroupId` or `authorizeAllGroups` must be set.
  /// [clientVpnEndpointId] The ID of the Client VPN endpoint.
  /// [description] A brief description of the authorization rule.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [targetNetworkCidr] The IPv4 or IPv6 address range, in CIDR notation, of the network to which the authorization rule applies.
  const AuthorizationRuleState({
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
      accessGroupId: (() { final guardedValue = map['accessGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authorizeAllGroups: (() { final guardedValue = map['authorizeAllGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      clientVpnEndpointId: (() { final guardedValue = map['clientVpnEndpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetNetworkCidr: (() { final guardedValue = map['targetNetworkCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
