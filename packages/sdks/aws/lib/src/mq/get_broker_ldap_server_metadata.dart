// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBrokerLdapServerMetadata {
  /// List of a fully qualified domain name of the LDAP server and an optional failover server.
  final pulumi.Input<List<String>> hosts;
  /// Fully qualified name of the directory to search for a user's groups.
  final pulumi.Input<String> roleBase;
  /// LDAP attribute that identifies the group name attribute in the object returned from the group membership query.
  final pulumi.Input<String> roleName;
  /// Search criteria for groups.
  final pulumi.Input<String> roleSearchMatching;
  /// Whether the directory search scope is the entire sub-tree.
  final pulumi.Input<bool> roleSearchSubtree;
  /// Service account password.
  final pulumi.Input<String> serviceAccountPassword;
  /// Service account username.
  final pulumi.Input<String> serviceAccountUsername;
  /// Fully qualified name of the directory where you want to search for users.
  final pulumi.Input<String> userBase;
  /// Name of the LDAP attribute for the user group membership.
  final pulumi.Input<String> userRoleName;
  /// Search criteria for users.
  final pulumi.Input<String> userSearchMatching;
  /// Whether the directory search scope is the entire sub-tree.
  final pulumi.Input<bool> userSearchSubtree;

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
      hosts: ((map['hosts'] as List).cast<String>()).input(),
      roleBase: (map['roleBase'] as String).input(),
      roleName: (map['roleName'] as String).input(),
      roleSearchMatching: (map['roleSearchMatching'] as String).input(),
      roleSearchSubtree: (map['roleSearchSubtree'] as bool).input(),
      serviceAccountPassword: (map['serviceAccountPassword'] as String).input(),
      serviceAccountUsername: (map['serviceAccountUsername'] as String).input(),
      userBase: (map['userBase'] as String).input(),
      userRoleName: (map['userRoleName'] as String).input(),
      userSearchMatching: (map['userSearchMatching'] as String).input(),
      userSearchSubtree: (map['userSearchSubtree'] as bool).input(),
    );
  }
}

