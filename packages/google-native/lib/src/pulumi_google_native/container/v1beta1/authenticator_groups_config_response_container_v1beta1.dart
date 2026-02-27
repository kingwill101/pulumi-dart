// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for returning group information from authenticators.
class AuthenticatorGroupsConfigResponseContainerV1beta1 {
  /// Whether this cluster should return group membership lookups during authentication using a group of security groups.
  final bool enabled;

  /// The name of the security group-of-groups to be used. Only relevant if enabled = true.
  final String securityGroup;

  AuthenticatorGroupsConfigResponseContainerV1beta1({
    required this.enabled,
    required this.securityGroup,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['securityGroup'] = securityGroup;
    return map;
  }

  factory AuthenticatorGroupsConfigResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return AuthenticatorGroupsConfigResponseContainerV1beta1(
      enabled: map['enabled'] as bool,
      securityGroup: map['securityGroup'] as String,
    );
  }
}
