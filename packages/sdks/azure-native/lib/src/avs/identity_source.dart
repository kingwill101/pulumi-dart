// ignore_for_file: unused_element, unnecessary_cast


/// vCenter Single Sign On Identity Source
class IdentitySource {
  /// The domain's NetBIOS name
  final String? alias;
  /// The base distinguished name for groups
  final String? baseGroupDN;
  /// The base distinguished name for users
  final String? baseUserDN;
  /// The domain's DNS name
  final String? domain;
  /// The name of the identity source
  final String? name;
  /// The password of the Active Directory user with a minimum of read-only access to
  /// Base DN for users and groups.
  final String? password;
  /// Primary server URL
  final String? primaryServer;
  /// Secondary server URL
  final String? secondaryServer;
  /// Protect LDAP communication using SSL certificate (LDAPS)
  final String? ssl;
  /// The ID of an Active Directory user with a minimum of read-only access to Base
  /// DN for users and group
  final String? username;

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
      alias: map['alias'] == null ? null : map['alias'] as String,
      baseGroupDN: map['baseGroupDN'] == null ? null : map['baseGroupDN'] as String,
      baseUserDN: map['baseUserDN'] == null ? null : map['baseUserDN'] as String,
      domain: map['domain'] == null ? null : map['domain'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      primaryServer: map['primaryServer'] == null ? null : map['primaryServer'] as String,
      secondaryServer: map['secondaryServer'] == null ? null : map['secondaryServer'] as String,
      ssl: map['ssl'] == null ? null : map['ssl'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

