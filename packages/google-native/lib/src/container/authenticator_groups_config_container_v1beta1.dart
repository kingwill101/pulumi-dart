// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for returning group information from authenticators.
class AuthenticatorGroupsConfigContainerV1beta1 {
  /// Whether this cluster should return group membership lookups during authentication using a group of security groups.
  final bool? enabled;

  /// The name of the security group-of-groups to be used. Only relevant if enabled = true.
  final String? securityGroup;

  /// Creates a new [AuthenticatorGroupsConfigContainerV1beta1].
  /// [enabled] Whether this cluster should return group membership lookups during authentication using a group of security groups.
  /// [securityGroup] The name of the security group-of-groups to be used. Only relevant if enabled = true.
  AuthenticatorGroupsConfigContainerV1beta1({this.enabled, this.securityGroup});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'securityGroup': ?securityGroup,
    };
  }

  factory AuthenticatorGroupsConfigContainerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return AuthenticatorGroupsConfigContainerV1beta1(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      securityGroup: map['securityGroup'] == null
          ? null
          : map['securityGroup'] as String,
    );
  }
}
