// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for returning group information from authenticators.
class AuthenticatorGroupsConfigResponse2 {
  /// Whether this cluster should return group membership lookups during authentication using a group of security groups.
  final bool enabled;

  /// The name of the security group-of-groups to be used. Only relevant if enabled = true.
  final String securityGroup;

  AuthenticatorGroupsConfigResponse2({
    required this.enabled,
    required this.securityGroup,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['securityGroup'] = securityGroup;
    return map;
  }

  factory AuthenticatorGroupsConfigResponse2.fromMap(Map<String, dynamic> map) {
    return AuthenticatorGroupsConfigResponse2(
      enabled: map['enabled'] as bool,
      securityGroup: map['securityGroup'] as String,
    );
  }
}
