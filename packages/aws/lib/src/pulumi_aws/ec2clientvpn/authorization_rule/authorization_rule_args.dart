// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for AuthorizationRule.
class AuthorizationRuleArgs {
  /// The ID of the group to which the authorization rule grants access. One of `access_group_id` or `authorize_all_groups` must be set.
  final Input<String>? accessGroupId;

  /// Indicates whether the authorization rule grants access to all clients. One of `access_group_id` or `authorize_all_groups` must be set.
  final Input<bool>? authorizeAllGroups;

  /// The ID of the Client VPN endpoint.
  final Input<String> clientVpnEndpointId;

  /// A brief description of the authorization rule.
  final Input<String>? description;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The IPv4 or IPv6 address range, in CIDR notation, of the network to which the authorization rule applies.
  final Input<String> targetNetworkCidr;

  AuthorizationRuleArgs({
    this.accessGroupId,
    this.authorizeAllGroups,
    required this.clientVpnEndpointId,
    this.description,
    this.region,
    required this.targetNetworkCidr,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessGroupIdValue = accessGroupId;
    if (accessGroupIdValue != null) {
      map['accessGroupId'] = accessGroupIdValue;
    }
    final authorizeAllGroupsValue = authorizeAllGroups;
    if (authorizeAllGroupsValue != null) {
      map['authorizeAllGroups'] = authorizeAllGroupsValue;
    }
    map['clientVpnEndpointId'] = clientVpnEndpointId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['targetNetworkCidr'] = targetNetworkCidr;
    return map;
  }

  factory AuthorizationRuleArgs.fromMap(Map<String, dynamic> map) {
    return AuthorizationRuleArgs(
      accessGroupId: Input.asOptionalInput<String>(map['accessGroupId']),
      authorizeAllGroups:
          Input.asOptionalInput<bool>(map['authorizeAllGroups']),
      clientVpnEndpointId: Input.asInput<String>(map['clientVpnEndpointId']),
      description: Input.asOptionalInput<String>(map['description']),
      region: Input.asOptionalInput<String>(map['region']),
      targetNetworkCidr: Input.asInput<String>(map['targetNetworkCidr']),
    );
  }
}
