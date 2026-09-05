// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2clientvpn_authorization_rule_authorization_rule_args_doc}
/// The set of arguments for AuthorizationRule.
/// {@endtemplate}
/// {@macro pulumi_ec2clientvpn_authorization_rule_authorization_rule_args_doc}
class AuthorizationRuleArgs {
  /// The ID of the group to which the authorization rule grants access. One of `accessGroupId` or `authorizeAllGroups` must be set.
  final pulumi.Input<String?>? accessGroupId;
  /// Indicates whether the authorization rule grants access to all clients. One of `accessGroupId` or `authorizeAllGroups` must be set.
  final pulumi.Input<bool?>? authorizeAllGroups;
  /// The ID of the Client VPN endpoint.
  final pulumi.Input<String> clientVpnEndpointId;
  /// A brief description of the authorization rule.
  final pulumi.Input<String?>? description;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The IPv4 or IPv6 address range, in CIDR notation, of the network to which the authorization rule applies.
  final pulumi.Input<String> targetNetworkCidr;

  /// Creates a new [AuthorizationRuleArgs].
  /// [accessGroupId] The ID of the group to which the authorization rule grants access. One of `accessGroupId` or `authorizeAllGroups` must be set.
  /// [authorizeAllGroups] Indicates whether the authorization rule grants access to all clients. One of `accessGroupId` or `authorizeAllGroups` must be set.
  /// [clientVpnEndpointId] The ID of the Client VPN endpoint.
  /// [description] A brief description of the authorization rule.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [targetNetworkCidr] The IPv4 or IPv6 address range, in CIDR notation, of the network to which the authorization rule applies.
  const AuthorizationRuleArgs({
    this.accessGroupId,
    this.authorizeAllGroups,
    required this.clientVpnEndpointId,
    this.description,
    this.region,
    required this.targetNetworkCidr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGroupId': ?accessGroupId,
      'authorizeAllGroups': ?authorizeAllGroups,
      'clientVpnEndpointId': clientVpnEndpointId,
      'description': ?description,
      'region': ?region,
      'targetNetworkCidr': targetNetworkCidr,
    };
  }

  factory AuthorizationRuleArgs.fromMap(Map<String, dynamic> map) {
    return AuthorizationRuleArgs(
      accessGroupId: (() { final guardedValue = map['accessGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authorizeAllGroups: (() { final guardedValue = map['authorizeAllGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      clientVpnEndpointId: pulumi.Input.fromValue(map['clientVpnEndpointId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetNetworkCidr: pulumi.Input.fromValue(map['targetNetworkCidr'] as String),
    );
  }
}
