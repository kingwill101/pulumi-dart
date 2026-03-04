// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// vCenter Single Sign On Identity Source
class IdentitySource {
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

  /// Creates a new [IdentitySource].
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
  IdentitySource({
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

  factory IdentitySource.fromMap(Map<String, dynamic> map) {
    return IdentitySource(
      alias: (() {
        final guardedValue = map['alias'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      baseGroupDN: (() {
        final guardedValue = map['baseGroupDN'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      baseUserDN: (() {
        final guardedValue = map['baseUserDN'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      domain: (() {
        final guardedValue = map['domain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primaryServer: (() {
        final guardedValue = map['primaryServer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryServer: (() {
        final guardedValue = map['secondaryServer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ssl: (() {
        final guardedValue = map['ssl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      username: (() {
        final guardedValue = map['username'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
