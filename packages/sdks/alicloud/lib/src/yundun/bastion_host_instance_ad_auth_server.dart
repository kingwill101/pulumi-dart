// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BastionHostInstanceAdAuthServer {
  final pulumi.Input<String> account;
  final pulumi.Input<String> baseDn;
  final pulumi.Input<String> domain;
  final pulumi.Input<String>? emailMapping;
  final pulumi.Input<String>? filter;
  final pulumi.Input<bool> isSsl;
  final pulumi.Input<String>? mobileMapping;
  final pulumi.Input<String>? nameMapping;
  final pulumi.Input<String>? password;
  final pulumi.Input<int> port;
  final pulumi.Input<String> server;
  final pulumi.Input<String>? standbyServer;

  /// Creates a new [BastionHostInstanceAdAuthServer].
  /// [account] Required.
  /// [baseDn] Required.
  /// [domain] Required.
  /// [emailMapping] Optional.
  /// [filter] Optional.
  /// [isSsl] Required.
  /// [mobileMapping] Optional.
  /// [nameMapping] Optional.
  /// [password] Optional.
  /// [port] Required.
  /// [server] Required.
  /// [standbyServer] Optional.
  BastionHostInstanceAdAuthServer({
    required this.account,
    required this.baseDn,
    required this.domain,
    this.emailMapping,
    this.filter,
    required this.isSsl,
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
      'domain': domain,
      'emailMapping': ?emailMapping,
      'filter': ?filter,
      'isSsl': isSsl,
      'mobileMapping': ?mobileMapping,
      'nameMapping': ?nameMapping,
      'password': ?password,
      'port': port,
      'server': server,
      'standbyServer': ?standbyServer,
    };
  }

  factory BastionHostInstanceAdAuthServer.fromMap(Map<String, dynamic> map) {
    return BastionHostInstanceAdAuthServer(
      account: (map['account'] as String).input(),
      baseDn: (map['baseDn'] as String).input(),
      domain: (map['domain'] as String).input(),
      emailMapping: map['emailMapping'] == null ? null : (map['emailMapping'] as String).input(),
      filter: map['filter'] == null ? null : (map['filter'] as String).input(),
      isSsl: (map['isSsl'] as bool).input(),
      mobileMapping: map['mobileMapping'] == null ? null : (map['mobileMapping'] as String).input(),
      nameMapping: map['nameMapping'] == null ? null : (map['nameMapping'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      port: (map['port'] as int).input(),
      server: (map['server'] as String).input(),
      standbyServer: map['standbyServer'] == null ? null : (map['standbyServer'] as String).input(),
    );
  }
}

