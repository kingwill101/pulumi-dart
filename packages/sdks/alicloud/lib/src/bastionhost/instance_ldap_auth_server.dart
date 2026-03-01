// ignore_for_file: unused_element, unnecessary_cast


class InstanceLdapAuthServer {
  /// The username of the account that is used for the LDAP server.
  final String account;
  /// The Base distinguished name (DN).
  final String baseDn;
  /// The field that is used to indicate the email address of a user on the LDAP server.
  final String? emailMapping;
  /// The condition that is used to filter users.
  final String? filter;
  /// Specifies whether to support SSL.
  final bool? isSsl;
  /// The field that is used to indicate the logon name of a user on the LDAP server.
  final String? loginNameMapping;
  /// The field that is used to indicate the mobile phone number of a user on the LDAP server.
  final String? mobileMapping;
  /// The field that is used to indicate the name of a user on the LDAP server.
  final String? nameMapping;
  /// The password of the account that is used for the LDAP server.
  final String? password;
  /// The port that is used to access the LDAP server.
  final int port;
  /// The address of the LDAP server.
  final String server;
  /// The address of the secondary LDAP server.
  final String? standbyServer;

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

