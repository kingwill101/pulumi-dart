// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// LDAP search scope
class LdapSearchScopeOptResponse {
  /// This specifies the group DN, which overrides the base DN for group lookups.
  final pulumi.Input<String>? groupDN;
  /// This specifies the custom LDAP search filter to be used when looking up group membership from LDAP server.
  final pulumi.Input<String>? groupMembershipFilter;
  /// This specifies the user DN, which overrides the base DN for user lookups.
  final pulumi.Input<String>? userDN;

  /// Creates a new [LdapSearchScopeOptResponse].
  /// [groupDN] This specifies the group DN, which overrides the base DN for group lookups.
  /// [groupMembershipFilter] This specifies the custom LDAP search filter to be used when looking up group membership from LDAP server.
  /// [userDN] This specifies the user DN, which overrides the base DN for user lookups.
  const LdapSearchScopeOptResponse({
    this.groupDN,
    this.groupMembershipFilter,
    this.userDN,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupDN': ?groupDN,
      'groupMembershipFilter': ?groupMembershipFilter,
      'userDN': ?userDN,
    };
  }

  factory LdapSearchScopeOptResponse.fromMap(Map<String, dynamic> map) {
    return LdapSearchScopeOptResponse(
      groupDN: (() { final guardedValue = map['groupDN']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupMembershipFilter: (() { final guardedValue = map['groupMembershipFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userDN: (() { final guardedValue = map['userDN']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

