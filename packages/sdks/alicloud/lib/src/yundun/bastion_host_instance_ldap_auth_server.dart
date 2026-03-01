// ignore_for_file: unused_element, unnecessary_cast


class BastionHostInstanceLdapAuthServer {
  final String account;
  final String baseDn;
  final String? emailMapping;
  final String? filter;
  final bool? isSsl;
  final String? loginNameMapping;
  final String? mobileMapping;
  final String? nameMapping;
  final String? password;
  final int port;
  final String server;
  final String? standbyServer;

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
      account: map['account'] as String,
      baseDn: map['baseDn'] as String,
      emailMapping: map['emailMapping'] == null ? null : map['emailMapping'] as String,
      filter: map['filter'] == null ? null : map['filter'] as String,
      isSsl: map['isSsl'] == null ? null : map['isSsl'] as bool,
      loginNameMapping: map['loginNameMapping'] == null ? null : map['loginNameMapping'] as String,
      mobileMapping: map['mobileMapping'] == null ? null : map['mobileMapping'] as String,
      nameMapping: map['nameMapping'] == null ? null : map['nameMapping'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      port: map['port'] as int,
      server: map['server'] as String,
      standbyServer: map['standbyServer'] == null ? null : map['standbyServer'] as String,
    );
  }
}

