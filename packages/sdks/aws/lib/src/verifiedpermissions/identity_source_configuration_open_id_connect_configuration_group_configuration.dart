// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IdentitySourceConfigurationOpenIdConnectConfigurationGroupConfiguration {
  /// Token claim that you want Verified Permissions to interpret as group membership. For example, `groups`.
  final pulumi.Input<String> groupClaim;
  /// Policy store entity type that you want to map your users' group claim to. For example, `MyCorp::UserGroup`. A group entity type is an entity that can have a user entity type as a member.
  final pulumi.Input<String> groupEntityType;

  /// Creates a new [IdentitySourceConfigurationOpenIdConnectConfigurationGroupConfiguration].
  /// [groupClaim] Token claim that you want Verified Permissions to interpret as group membership. For example, `groups`.
  /// [groupEntityType] Policy store entity type that you want to map your users' group claim to. For example, `MyCorp::UserGroup`. A group entity type is an entity that can have a user entity type as a member.
  const IdentitySourceConfigurationOpenIdConnectConfigurationGroupConfiguration({
    required this.groupClaim,
    required this.groupEntityType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupClaim': groupClaim,
      'groupEntityType': groupEntityType,
    };
  }

  factory IdentitySourceConfigurationOpenIdConnectConfigurationGroupConfiguration.fromMap(Map<String, dynamic> map) {
    return IdentitySourceConfigurationOpenIdConnectConfigurationGroupConfiguration(
      groupClaim: pulumi.Input.fromValue(map['groupClaim'] as String),
      groupEntityType: pulumi.Input.fromValue(map['groupEntityType'] as String),
    );
  }
}
