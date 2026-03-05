// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceAdAuthServer {
  /// The username of the account that is used for the AD server.
  final pulumi.Input<String> account;
  /// The Base distinguished name (DN).
  final pulumi.Input<String> baseDn;
  /// The domain on the AD server.
  final pulumi.Input<String> domain;
  /// The field that is used to indicate the email address of a user on the AD server.
  final pulumi.Input<String>? emailMapping;
  /// The condition that is used to filter users.
  final pulumi.Input<String>? filter;
  /// Specifies whether to support SSL.
  final pulumi.Input<bool> isSsl;
  /// The field that is used to indicate the mobile phone number of a user on the AD server.
  final pulumi.Input<String>? mobileMapping;
  /// The field that is used to indicate the name of a user on the AD server.
  final pulumi.Input<String>? nameMapping;
  /// The password of the account that is used for the AD server.
  final pulumi.Input<String>? password;
  /// The port that is used to access the AD server.
  final pulumi.Input<int> port;
  /// The address of the AD server.
  final pulumi.Input<String> server;
  /// The address of the secondary AD server.
  final pulumi.Input<String>? standbyServer;

  /// Creates a new [InstanceAdAuthServer].
  /// [account] The username of the account that is used for the AD server.
  /// [baseDn] The Base distinguished name (DN).
  /// [domain] The domain on the AD server.
  /// [emailMapping] The field that is used to indicate the email address of a user on the AD server.
  /// [filter] The condition that is used to filter users.
  /// [isSsl] Specifies whether to support SSL.
  /// [mobileMapping] The field that is used to indicate the mobile phone number of a user on the AD server.
  /// [nameMapping] The field that is used to indicate the name of a user on the AD server.
  /// [password] The password of the account that is used for the AD server.
  /// [port] The port that is used to access the AD server.
  /// [server] The address of the AD server.
  /// [standbyServer] The address of the secondary AD server.
  InstanceAdAuthServer({
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

  factory InstanceAdAuthServer.fromMap(Map<String, dynamic> map) {
    return InstanceAdAuthServer(
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

