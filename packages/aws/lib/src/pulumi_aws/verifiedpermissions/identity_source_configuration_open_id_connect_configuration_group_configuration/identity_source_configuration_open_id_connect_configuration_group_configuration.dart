// ignore_for_file: unused_element, unnecessary_cast

class IdentitySourceConfigurationOpenIdConnectConfigurationGroupConfiguration {
  /// The token claim that you want Verified Permissions to interpret as group membership. For example, `groups`.
  final String groupClaim;

  /// The name of the schema entity type that's mapped to the user pool group. Defaults to `AWS::CognitoGroup`.
  final String groupEntityType;

  IdentitySourceConfigurationOpenIdConnectConfigurationGroupConfiguration({
    required this.groupClaim,
    required this.groupEntityType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupClaim'] = groupClaim;
    map['groupEntityType'] = groupEntityType;
    return map;
  }

  factory IdentitySourceConfigurationOpenIdConnectConfigurationGroupConfiguration.fromMap(
      Map<String, dynamic> map) {
    return IdentitySourceConfigurationOpenIdConnectConfigurationGroupConfiguration(
      groupClaim: map['groupClaim'] as String,
      groupEntityType: map['groupEntityType'] as String,
    );
  }
}
