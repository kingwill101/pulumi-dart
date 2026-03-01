// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2clientvpn_authorization_rule_authorization_rule_args_doc}
/// The set of arguments for AuthorizationRule.
/// {@endtemplate}
/// {@macro pulumi_ec2clientvpn_authorization_rule_authorization_rule_args_doc}
class AuthorizationRuleArgs {
  /// The ID of the group to which the authorization rule grants access. One of `access_group_id` or `authorize_all_groups` must be set.
  final pulumi.Input<String>? accessGroupId;
  /// Indicates whether the authorization rule grants access to all clients. One of `access_group_id` or `authorize_all_groups` must be set.
  final pulumi.Input<bool>? authorizeAllGroups;
  /// The ID of the Client VPN endpoint.
  final pulumi.Input<String> clientVpnEndpointId;
  /// A brief description of the authorization rule.
  final pulumi.Input<String>? description;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The IPv4 or IPv6 address range, in CIDR notation, of the network to which the authorization rule applies.
  final pulumi.Input<String> targetNetworkCidr;

  /// Creates a new [AuthorizationRuleArgs].
  /// [accessGroupId] The ID of the group to which the authorization rule grants access. One of `access_group_id` or `authorize_all_groups` must be set.
  /// [authorizeAllGroups] Indicates whether the authorization rule grants access to all clients. One of `access_group_id` or `authorize_all_groups` must be set.
  /// [clientVpnEndpointId] The ID of the Client VPN endpoint.
  /// [description] A brief description of the authorization rule.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [targetNetworkCidr] The IPv4 or IPv6 address range, in CIDR notation, of the network to which the authorization rule applies.
  AuthorizationRuleArgs({
    pulumi.Output<String>? accessGroupId,
    pulumi.Output<bool>? authorizeAllGroups,
    required pulumi.Output<String> clientVpnEndpointId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? region,
    required pulumi.Output<String> targetNetworkCidr,
  }) :
      accessGroupId = pulumi.Input.asOptionalInput<String>(accessGroupId),
      authorizeAllGroups = pulumi.Input.asOptionalInput<bool>(authorizeAllGroups),
      clientVpnEndpointId = pulumi.Input.asInput<String>(clientVpnEndpointId),
      description = pulumi.Input.asOptionalInput<String>(description),
      region = pulumi.Input.asOptionalInput<String>(region),
      targetNetworkCidr = pulumi.Input.asInput<String>(targetNetworkCidr);

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
      accessGroupId: map['accessGroupId'] == null ? null : pulumi.Output.create<String>(map['accessGroupId'] as String),
      authorizeAllGroups: map['authorizeAllGroups'] == null ? null : pulumi.Output.create<bool>(map['authorizeAllGroups'] as bool),
      clientVpnEndpointId: pulumi.Output.create<String>(map['clientVpnEndpointId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      targetNetworkCidr: pulumi.Output.create<String>(map['targetNetworkCidr'] as String),
    );
  }
}

