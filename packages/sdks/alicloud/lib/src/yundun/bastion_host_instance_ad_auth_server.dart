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
      account: pulumi.Input.fromValue(map['account'] as String),
      baseDn: pulumi.Input.fromValue(map['baseDn'] as String),
      domain: pulumi.Input.fromValue(map['domain'] as String),
      emailMapping: (() { final guardedValue = map['emailMapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isSsl: pulumi.Input.fromValue(map['isSsl'] as bool),
      mobileMapping: (() { final guardedValue = map['mobileMapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameMapping: (() { final guardedValue = map['nameMapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: pulumi.Input.fromValue(map['port'] as int),
      server: pulumi.Input.fromValue(map['server'] as String),
      standbyServer: (() { final guardedValue = map['standbyServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

