// ignore_for_file: unused_element, unnecessary_cast


class InstanceAdAuthServer {
  /// The username of the account that is used for the AD server.
  final String account;
  /// The Base distinguished name (DN).
  final String baseDn;
  /// The domain on the AD server.
  final String domain;
  /// The field that is used to indicate the email address of a user on the AD server.
  final String? emailMapping;
  /// The condition that is used to filter users.
  final String? filter;
  /// Specifies whether to support SSL.
  final bool isSsl;
  /// The field that is used to indicate the mobile phone number of a user on the AD server.
  final String? mobileMapping;
  /// The field that is used to indicate the name of a user on the AD server.
  final String? nameMapping;
  /// The password of the account that is used for the AD server.
  final String? password;
  /// The port that is used to access the AD server.
  final int port;
  /// The address of the AD server.
  final String server;
  /// The address of the secondary AD server.
  final String? standbyServer;

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
      account: map['account'] as String,
      baseDn: map['baseDn'] as String,
      domain: map['domain'] as String,
      emailMapping: map['emailMapping'] == null ? null : map['emailMapping'] as String,
      filter: map['filter'] == null ? null : map['filter'] as String,
      isSsl: map['isSsl'] as bool,
      mobileMapping: map['mobileMapping'] == null ? null : map['mobileMapping'] as String,
      nameMapping: map['nameMapping'] == null ? null : map['nameMapping'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      port: map['port'] as int,
      server: map['server'] as String,
      standbyServer: map['standbyServer'] == null ? null : map['standbyServer'] as String,
    );
  }
}

