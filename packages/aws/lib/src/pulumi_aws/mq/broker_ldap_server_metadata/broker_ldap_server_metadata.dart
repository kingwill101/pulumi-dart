// ignore_for_file: unused_element, unnecessary_cast

class BrokerLdapServerMetadata {
  /// List of fully qualified domain names of the LDAP server and optional failover server.
  final List<String>? hosts;

  /// Fully qualified name of the directory to search for a user's groups.
  final String? roleBase;

  /// LDAP attribute that identifies the group name attribute in the object returned from the group membership query.
  final String? roleName;

  /// Search criteria for groups.
  final String? roleSearchMatching;

  /// Whether the directory search scope is the entire sub-tree.
  final bool? roleSearchSubtree;

  /// Service account password.
  final String? serviceAccountPassword;

  /// Service account username.
  final String? serviceAccountUsername;

  /// Fully qualified name of the directory where you want to search for users.
  final String? userBase;

  /// Name of the LDAP attribute for the user group membership.
  final String? userRoleName;

  /// Search criteria for users.
  final String? userSearchMatching;

  /// Whether the directory search scope is the entire sub-tree.
  final bool? userSearchSubtree;

  BrokerLdapServerMetadata({
    this.hosts,
    this.roleBase,
    this.roleName,
    this.roleSearchMatching,
    this.roleSearchSubtree,
    this.serviceAccountPassword,
    this.serviceAccountUsername,
    this.userBase,
    this.userRoleName,
    this.userSearchMatching,
    this.userSearchSubtree,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hostsValue = hosts;
    if (hostsValue != null) {
      map['hosts'] = hostsValue;
    }
    final roleBaseValue = roleBase;
    if (roleBaseValue != null) {
      map['roleBase'] = roleBaseValue;
    }
    final roleNameValue = roleName;
    if (roleNameValue != null) {
      map['roleName'] = roleNameValue;
    }
    final roleSearchMatchingValue = roleSearchMatching;
    if (roleSearchMatchingValue != null) {
      map['roleSearchMatching'] = roleSearchMatchingValue;
    }
    final roleSearchSubtreeValue = roleSearchSubtree;
    if (roleSearchSubtreeValue != null) {
      map['roleSearchSubtree'] = roleSearchSubtreeValue;
    }
    final serviceAccountPasswordValue = serviceAccountPassword;
    if (serviceAccountPasswordValue != null) {
      map['serviceAccountPassword'] = serviceAccountPasswordValue;
    }
    final serviceAccountUsernameValue = serviceAccountUsername;
    if (serviceAccountUsernameValue != null) {
      map['serviceAccountUsername'] = serviceAccountUsernameValue;
    }
    final userBaseValue = userBase;
    if (userBaseValue != null) {
      map['userBase'] = userBaseValue;
    }
    final userRoleNameValue = userRoleName;
    if (userRoleNameValue != null) {
      map['userRoleName'] = userRoleNameValue;
    }
    final userSearchMatchingValue = userSearchMatching;
    if (userSearchMatchingValue != null) {
      map['userSearchMatching'] = userSearchMatchingValue;
    }
    final userSearchSubtreeValue = userSearchSubtree;
    if (userSearchSubtreeValue != null) {
      map['userSearchSubtree'] = userSearchSubtreeValue;
    }
    return map;
  }

  factory BrokerLdapServerMetadata.fromMap(Map<String, dynamic> map) {
    return BrokerLdapServerMetadata(
      hosts:
          map['hosts'] == null ? null : (map['hosts'] as List).cast<String>(),
      roleBase: map['roleBase'] == null ? null : map['roleBase'] as String,
      roleName: map['roleName'] == null ? null : map['roleName'] as String,
      roleSearchMatching: map['roleSearchMatching'] == null
          ? null
          : map['roleSearchMatching'] as String,
      roleSearchSubtree: map['roleSearchSubtree'] == null
          ? null
          : map['roleSearchSubtree'] as bool,
      serviceAccountPassword: map['serviceAccountPassword'] == null
          ? null
          : map['serviceAccountPassword'] as String,
      serviceAccountUsername: map['serviceAccountUsername'] == null
          ? null
          : map['serviceAccountUsername'] as String,
      userBase: map['userBase'] == null ? null : map['userBase'] as String,
      userRoleName:
          map['userRoleName'] == null ? null : map['userRoleName'] as String,
      userSearchMatching: map['userSearchMatching'] == null
          ? null
          : map['userSearchMatching'] as String,
      userSearchSubtree: map['userSearchSubtree'] == null
          ? null
          : map['userSearchSubtree'] as bool,
    );
  }
}
