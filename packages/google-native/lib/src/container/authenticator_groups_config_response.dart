// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for returning group information from authenticators.
class AuthenticatorGroupsConfigResponse {
  /// Whether this cluster should return group membership lookups during authentication using a group of security groups.
  final bool enabled;

  /// The name of the security group-of-groups to be used. Only relevant if enabled = true.
  final String securityGroup;

  /// Creates a new [AuthenticatorGroupsConfigResponse].
  /// [enabled] Whether this cluster should return group membership lookups during authentication using a group of security groups.
  /// [securityGroup] The name of the security group-of-groups to be used. Only relevant if enabled = true.
  AuthenticatorGroupsConfigResponse({
    required this.enabled,
    required this.securityGroup,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['securityGroup'] = securityGroup;
    return map;
  }

  factory AuthenticatorGroupsConfigResponse.fromMap(Map<String, dynamic> map) {
    return AuthenticatorGroupsConfigResponse(
      enabled: map['enabled'] as bool,
      securityGroup: map['securityGroup'] as String,
    );
  }
}
