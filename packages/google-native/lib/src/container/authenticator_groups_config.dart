// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for returning group information from authenticators.
class AuthenticatorGroupsConfig {
  /// Whether this cluster should return group membership lookups during authentication using a group of security groups.
  final bool? enabled;

  /// The name of the security group-of-groups to be used. Only relevant if enabled = true.
  final String? securityGroup;

  /// Creates a new [AuthenticatorGroupsConfig].
  /// [enabled] Whether this cluster should return group membership lookups during authentication using a group of security groups.
  /// [securityGroup] The name of the security group-of-groups to be used. Only relevant if enabled = true.
  AuthenticatorGroupsConfig({
    this.enabled,
    this.securityGroup,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final securityGroupValue = securityGroup;
    if (securityGroupValue != null) {
      map['securityGroup'] = securityGroupValue;
    }
    return map;
  }

  factory AuthenticatorGroupsConfig.fromMap(Map<String, dynamic> map) {
    return AuthenticatorGroupsConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      securityGroup:
          map['securityGroup'] == null ? null : map['securityGroup'] as String,
    );
  }
}
