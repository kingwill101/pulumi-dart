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
  const InstanceLdapAuthServer({
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
      account: pulumi.Input.fromValue(map['account'] as String),
      baseDn: pulumi.Input.fromValue(map['baseDn'] as String),
      emailMapping: (() { final guardedValue = map['emailMapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isSsl: (() { final guardedValue = map['isSsl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      loginNameMapping: (() { final guardedValue = map['loginNameMapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mobileMapping: (() { final guardedValue = map['mobileMapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameMapping: (() { final guardedValue = map['nameMapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: pulumi.Input.fromValue(map['port'] as int),
      server: pulumi.Input.fromValue(map['server'] as String),
      standbyServer: (() { final guardedValue = map['standbyServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

