// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BrokerLdapServerMetadata {
  /// List of fully qualified domain names of the LDAP server and optional failover server.
  final pulumi.Input<List<String>>? hosts;
  /// Fully qualified name of the directory to search for a user's groups.
  final pulumi.Input<String>? roleBase;
  /// LDAP attribute that identifies the group name attribute in the object returned from the group membership query.
  final pulumi.Input<String>? roleName;
  /// Search criteria for groups.
  final pulumi.Input<String>? roleSearchMatching;
  /// Whether the directory search scope is the entire sub-tree.
  final pulumi.Input<bool>? roleSearchSubtree;
  /// Service account password.
  final pulumi.Input<String>? serviceAccountPassword;
  /// Service account username.
  final pulumi.Input<String>? serviceAccountUsername;
  /// Fully qualified name of the directory where you want to search for users.
  final pulumi.Input<String>? userBase;
  /// Name of the LDAP attribute for the user group membership.
  final pulumi.Input<String>? userRoleName;
  /// Search criteria for users.
  final pulumi.Input<String>? userSearchMatching;
  /// Whether the directory search scope is the entire sub-tree.
  final pulumi.Input<bool>? userSearchSubtree;

  /// Creates a new [BrokerLdapServerMetadata].
  /// [hosts] List of fully qualified domain names of the LDAP server and optional failover server.
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
    return <String, dynamic>{
      'hosts': ?hosts,
      'roleBase': ?roleBase,
      'roleName': ?roleName,
      'roleSearchMatching': ?roleSearchMatching,
      'roleSearchSubtree': ?roleSearchSubtree,
      'serviceAccountPassword': ?serviceAccountPassword,
      'serviceAccountUsername': ?serviceAccountUsername,
      'userBase': ?userBase,
      'userRoleName': ?userRoleName,
      'userSearchMatching': ?userSearchMatching,
      'userSearchSubtree': ?userSearchSubtree,
    };
  }

  factory BrokerLdapServerMetadata.fromMap(Map<String, dynamic> map) {
    return BrokerLdapServerMetadata(
      hosts: map['hosts'] == null ? null : (((map['hosts'] as List).cast<String>()).input()).input(),
      roleBase: map['roleBase'] == null ? null : ((map['roleBase'] as String).input()).input(),
      roleName: map['roleName'] == null ? null : ((map['roleName'] as String).input()).input(),
      roleSearchMatching: map['roleSearchMatching'] == null ? null : ((map['roleSearchMatching'] as String).input()).input(),
      roleSearchSubtree: map['roleSearchSubtree'] == null ? null : ((map['roleSearchSubtree'] as bool).input()).input(),
      serviceAccountPassword: map['serviceAccountPassword'] == null ? null : ((map['serviceAccountPassword'] as String).input()).input(),
      serviceAccountUsername: map['serviceAccountUsername'] == null ? null : ((map['serviceAccountUsername'] as String).input()).input(),
      userBase: map['userBase'] == null ? null : ((map['userBase'] as String).input()).input(),
      userRoleName: map['userRoleName'] == null ? null : ((map['userRoleName'] as String).input()).input(),
      userSearchMatching: map['userSearchMatching'] == null ? null : ((map['userSearchMatching'] as String).input()).input(),
      userSearchSubtree: map['userSearchSubtree'] == null ? null : ((map['userSearchSubtree'] as bool).input()).input(),
    );
  }
}

