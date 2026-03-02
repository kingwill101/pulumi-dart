// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceLdapAuthServer {
  /// The username of the account that is used for the LDAP server.
  final pulumi.Input<String> account;
  /// The Base distinguished name (DN).
  final pulumi.Input<String> baseDn;
  /// The field that is used to indicate the email address of a user on the LDAP server.
  final pulumi.Input<String>? emailMapping;
  /// The condition that is used to filter users.
  final pulumi.Input<String>? filter;
  /// Specifies whether to support SSL.
  final pulumi.Input<bool>? isSsl;
  /// The field that is used to indicate the logon name of a user on the LDAP server.
  final pulumi.Input<String>? loginNameMapping;
  /// The field that is used to indicate the mobile phone number of a user on the LDAP server.
  final pulumi.Input<String>? mobileMapping;
  /// The field that is used to indicate the name of a user on the LDAP server.
  final pulumi.Input<String>? nameMapping;
  /// The password of the account that is used for the LDAP server.
  final pulumi.Input<String>? password;
  /// The port that is used to access the LDAP server.
  final pulumi.Input<int> port;
  /// The address of the LDAP server.
  final pulumi.Input<String> server;
  /// The address of the secondary LDAP server.
  final pulumi.Input<String>? standbyServer;

  /// Creates a new [InstanceLdapAuthServer].
  /// [account] The username of the account that is used for the LDAP server.
  /// [baseDn] The Base distinguished name (DN).
  /// [emailMapping] The field that is used to indicate the email address of a user on the LDAP server.
  /// [filter] The condition that is used to filter users.
  /// [isSsl] Specifies whether to support SSL.
  /// [loginNameMapping] The field that is used to indicate the logon name of a user on the LDAP server.
  /// [mobileMapping] The field that is used to indicate the mobile phone number of a user on the LDAP server.
  /// [nameMapping] The field that is used to indicate the name of a user on the LDAP server.
  /// [password] The password of the account that is used for the LDAP server.
  /// [port] The port that is used to access the LDAP server.
  /// [server] The address of the LDAP server.
  /// [standbyServer] The address of the secondary LDAP server.
  InstanceLdapAuthServer({
    required this.account,
    required this.baseDn,
    this.emailMapping,
    this.filter,
    this.isSsl,
    this.loginNameMapping,
    this.mobileMapping,
    this.nameMapping,
    this.password,
    required this.port,
    required this.server,
    this.standbyServer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'account': account,
      'baseDn': baseDn,
      'emailMapping': ?emailMapping,
      'filter': ?filter,
      'isSsl': ?isSsl,
      'loginNameMapping': ?loginNameMapping,
      'mobileMapping': ?mobileMapping,
      'nameMapping': ?nameMapping,
      'password': ?password,
      'port': port,
      'server': server,
      'standbyServer': ?standbyServer,
    };
  }

  factory InstanceLdapAuthServer.fromMap(Map<String, dynamic> map) {
    return InstanceLdapAuthServer(
      account: (map['account'] as String).input(),
      baseDn: (map['baseDn'] as String).input(),
      emailMapping: map['emailMapping'] == null ? null : (map['emailMapping']! as String).input(),
      filter: map['filter'] == null ? null : (map['filter']! as String).input(),
      isSsl: map['isSsl'] == null ? null : (map['isSsl']! as bool).input(),
      loginNameMapping: map['loginNameMapping'] == null ? null : (map['loginNameMapping']! as String).input(),
      mobileMapping: map['mobileMapping'] == null ? null : (map['mobileMapping']! as String).input(),
      nameMapping: map['nameMapping'] == null ? null : (map['nameMapping']! as String).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      port: (map['port'] as int).input(),
      server: (map['server'] as String).input(),
      standbyServer: map['standbyServer'] == null ? null : (map['standbyServer']! as String).input(),
    );
  }
}

