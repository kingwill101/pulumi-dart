// ignore_for_file: unused_element, unnecessary_cast


class GetBrokerLdapServerMetadata {
  /// List of a fully qualified domain name of the LDAP server and an optional failover server.
  final List<String> hosts;
  /// Fully qualified name of the directory to search for a user's groups.
  final String roleBase;
  /// LDAP attribute that identifies the group name attribute in the object returned from the group membership query.
  final String roleName;
  /// Search criteria for groups.
  final String roleSearchMatching;
  /// Whether the directory search scope is the entire sub-tree.
  final bool roleSearchSubtree;
  /// Service account password.
  final String serviceAccountPassword;
  /// Service account username.
  final String serviceAccountUsername;
  /// Fully qualified name of the directory where you want to search for users.
  final String userBase;
  /// Name of the LDAP attribute for the user group membership.
  final String userRoleName;
  /// Search criteria for users.
  final String userSearchMatching;
  /// Whether the directory search scope is the entire sub-tree.
  final bool userSearchSubtree;

  /// Creates a new [GetBrokerLdapServerMetadata].
  /// [hosts] List of a fully qualified domain name of the LDAP server and an optional failover server.
  /// [roleBase] Fully qualified name of the directory to search for a user's groups.
  /// [roleName] LDAP attribute that identifies the group name attribute in the object returned from the group membership query.
  /// [roleSearchMatching] Search criteria for groups.
  /// [roleSearchSubtree] Whether the directory search scope is the entire sub-tree.
  /// [serviceAccountPassword] Service account password.
  /// [serviceAccountUsername] Service account username.
  /// [userBase] Fully qualified name of the directory where you want to search for users.
  /// [userRoleName] Name of the LDAP attribute for the user group membership.
  /// [userSearchMatching] Search criteria for users.
  /// [userSearchSubtree] Whether the directory search scope is the entire sub-tree.
  GetBrokerLdapServerMetadata({
    required this.hosts,
    required this.roleBase,
    required this.roleName,
    required this.roleSearchMatching,
    required this.roleSearchSubtree,
    required this.serviceAccountPassword,
    required this.serviceAccountUsername,
    required this.userBase,
    required this.userRoleName,
    required this.userSearchMatching,
    required this.userSearchSubtree,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hosts': hosts,
      'roleBase': roleBase,
      'roleName': roleName,
      'roleSearchMatching': roleSearchMatching,
      'roleSearchSubtree': roleSearchSubtree,
      'serviceAccountPassword': serviceAccountPassword,
      'serviceAccountUsername': serviceAccountUsername,
      'userBase': userBase,
      'userRoleName': userRoleName,
      'userSearchMatching': userSearchMatching,
      'userSearchSubtree': userSearchSubtree,
    };
  }

  factory GetBrokerLdapServerMetadata.fromMap(Map<String, dynamic> map) {
    return GetBrokerLdapServerMetadata(
      hosts: (map['hosts'] as List).cast<String>(),
      roleBase: map['roleBase'] as String,
      roleName: map['roleName'] as String,
      roleSearchMatching: map['roleSearchMatching'] as String,
      roleSearchSubtree: map['roleSearchSubtree'] as bool,
      serviceAccountPassword: map['serviceAccountPassword'] as String,
      serviceAccountUsername: map['serviceAccountUsername'] as String,
      userBase: map['userBase'] as String,
      userRoleName: map['userRoleName'] as String,
      userSearchMatching: map['userSearchMatching'] as String,
      userSearchSubtree: map['userSearchSubtree'] as bool,
    );
  }
}

