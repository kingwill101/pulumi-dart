// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BastionHostInstanceLdapAuthServer {
  final pulumi.Input<String> account;
  final pulumi.Input<String> baseDn;
  final pulumi.Input<String>? emailMapping;
  final pulumi.Input<String>? filter;
  final pulumi.Input<bool>? isSsl;
  final pulumi.Input<String>? loginNameMapping;
  final pulumi.Input<String>? mobileMapping;
  final pulumi.Input<String>? nameMapping;
  final pulumi.Input<String>? password;
  final pulumi.Input<int> port;
  final pulumi.Input<String> server;
  final pulumi.Input<String>? standbyServer;

  /// Creates a new [BastionHostInstanceLdapAuthServer].
  /// [account] Required.
  /// [baseDn] Required.
  /// [emailMapping] Optional.
  /// [filter] Optional.
  /// [isSsl] Optional.
  /// [loginNameMapping] Optional.
  /// [mobileMapping] Optional.
  /// [nameMapping] Optional.
  /// [password] Optional.
  /// [port] Required.
  /// [server] Required.
  /// [standbyServer] Optional.
  BastionHostInstanceLdapAuthServer({
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

  factory BastionHostInstanceLdapAuthServer.fromMap(Map<String, dynamic> map) {
    return BastionHostInstanceLdapAuthServer(
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

