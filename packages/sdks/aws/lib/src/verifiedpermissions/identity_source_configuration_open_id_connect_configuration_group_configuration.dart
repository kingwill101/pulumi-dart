// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IdentitySourceConfigurationOpenIdConnectConfigurationGroupConfiguration {
  /// The token claim that you want Verified Permissions to interpret as group membership. For example, `groups`.
  final pulumi.Input<String> groupClaim;
  /// The name of the schema entity type that's mapped to the user pool group. Defaults to `AWS::CognitoGroup`.
  final pulumi.Input<String> groupEntityType;

  /// Creates a new [IdentitySourceConfigurationOpenIdConnectConfigurationGroupConfiguration].
  /// [groupClaim] The token claim that you want Verified Permissions to interpret as group membership. For example, `groups`.
  /// [groupEntityType] The name of the schema entity type that's mapped to the user pool group. Defaults to `AWS::CognitoGroup`.
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

