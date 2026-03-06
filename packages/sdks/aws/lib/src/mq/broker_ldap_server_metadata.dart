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
  const BrokerLdapServerMetadata({
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
      hosts: (() { final guardedValue = map['hosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      roleBase: (() { final guardedValue = map['roleBase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleName: (() { final guardedValue = map['roleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleSearchMatching: (() { final guardedValue = map['roleSearchMatching']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleSearchSubtree: (() { final guardedValue = map['roleSearchSubtree']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serviceAccountPassword: (() { final guardedValue = map['serviceAccountPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccountUsername: (() { final guardedValue = map['serviceAccountUsername']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userBase: (() { final guardedValue = map['userBase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userRoleName: (() { final guardedValue = map['userRoleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userSearchMatching: (() { final guardedValue = map['userSearchMatching']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userSearchSubtree: (() { final guardedValue = map['userSearchSubtree']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

