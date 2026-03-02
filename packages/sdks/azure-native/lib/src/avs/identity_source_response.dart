// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// vCenter Single Sign On Identity Source
class IdentitySourceResponse {
  /// The domain's NetBIOS name
  final pulumi.Input<String>? alias;
  /// The base distinguished name for groups
  final pulumi.Input<String>? baseGroupDN;
  /// The base distinguished name for users
  final pulumi.Input<String>? baseUserDN;
  /// The domain's DNS name
  final pulumi.Input<String>? domain;
  /// The name of the identity source
  final pulumi.Input<String>? name;
  /// The password of the Active Directory user with a minimum of read-only access to
  /// Base DN for users and groups.
  final pulumi.Input<String>? password;
  /// Primary server URL
  final pulumi.Input<String>? primaryServer;
  /// Secondary server URL
  final pulumi.Input<String>? secondaryServer;
  /// Protect LDAP communication using SSL certificate (LDAPS)
  final pulumi.Input<String>? ssl;
  /// The ID of an Active Directory user with a minimum of read-only access to Base
  /// DN for users and group
  final pulumi.Input<String>? username;

  /// Creates a new [IdentitySourceResponse].
  /// [alias] The domain's NetBIOS name
  /// [baseGroupDN] The base distinguished name for groups
  /// [baseUserDN] The base distinguished name for users
  /// [domain] The domain's DNS name
  /// [name] The name of the identity source
  /// [password] The password of the Active Directory user with a minimum of read-only access to
  /// [primaryServer] Primary server URL
  /// [secondaryServer] Secondary server URL
  /// [ssl] Protect LDAP communication using SSL certificate (LDAPS)
  /// [username] The ID of an Active Directory user with a minimum of read-only access to Base
  IdentitySourceResponse({
    this.alias,
    this.baseGroupDN,
    this.baseUserDN,
    this.domain,
    this.name,
    this.password,
    this.primaryServer,
    this.secondaryServer,
    this.ssl,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'baseGroupDN': ?baseGroupDN,
      'baseUserDN': ?baseUserDN,
      'domain': ?domain,
      'name': ?name,
      'password': ?password,
      'primaryServer': ?primaryServer,
      'secondaryServer': ?secondaryServer,
      'ssl': ?ssl,
      'username': ?username,
    };
  }

  factory IdentitySourceResponse.fromMap(Map<String, dynamic> map) {
    return IdentitySourceResponse(
      alias: map['alias'] == null ? null : (map['alias'] as String).input(),
      baseGroupDN: map['baseGroupDN'] == null ? null : (map['baseGroupDN'] as String).input(),
      baseUserDN: map['baseUserDN'] == null ? null : (map['baseUserDN'] as String).input(),
      domain: map['domain'] == null ? null : (map['domain'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      primaryServer: map['primaryServer'] == null ? null : (map['primaryServer'] as String).input(),
      secondaryServer: map['secondaryServer'] == null ? null : (map['secondaryServer'] as String).input(),
      ssl: map['ssl'] == null ? null : (map['ssl'] as String).input(),
      username: map['username'] == null ? null : (map['username'] as String).input(),
    );
  }
}

