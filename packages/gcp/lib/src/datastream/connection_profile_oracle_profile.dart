// ignore_for_file: unused_element, unnecessary_cast

class ConnectionProfileOracleProfile {
  /// Connection string attributes
  final Map<String, String>? connectionAttributes;

  /// Database for the Oracle connection.
  final String databaseService;

  /// Hostname for the Oracle connection.
  final String hostname;

  /// Password for the Oracle connection.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? password;

  /// Port for the Oracle connection.
  final int? port;

  /// A reference to a Secret Manager resource name storing the user's password.
  final String? secretManagerStoredPassword;

  /// Username for the Oracle connection.
  final String username;

  /// Creates a new [ConnectionProfileOracleProfile].
  /// [connectionAttributes] Connection string attributes
  /// [databaseService] Database for the Oracle connection.
  /// [hostname] Hostname for the Oracle connection.
  /// [password] Password for the Oracle connection.
  /// [port] Port for the Oracle connection.
  /// [secretManagerStoredPassword] A reference to a Secret Manager resource name storing the user's password.
  /// [username] Username for the Oracle connection.
  ConnectionProfileOracleProfile({
    this.connectionAttributes,
    required this.databaseService,
    required this.hostname,
    this.password,
    this.port,
    this.secretManagerStoredPassword,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectionAttributesValue = connectionAttributes;
    if (connectionAttributesValue != null) {
      map['connectionAttributes'] = connectionAttributesValue;
    }
    map['databaseService'] = databaseService;
    map['hostname'] = hostname;
    final passwordValue = password;
    if (passwordValue != null) {
      map['password'] = passwordValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final secretManagerStoredPasswordValue = secretManagerStoredPassword;
    if (secretManagerStoredPasswordValue != null) {
      map['secretManagerStoredPassword'] = secretManagerStoredPasswordValue;
    }
    map['username'] = username;
    return map;
  }

  factory ConnectionProfileOracleProfile.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileOracleProfile(
      connectionAttributes: map['connectionAttributes'] == null
          ? null
          : (map['connectionAttributes'] as Map).cast<String, String>(),
      databaseService: map['databaseService'] as String,
      hostname: map['hostname'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      secretManagerStoredPassword: map['secretManagerStoredPassword'] == null
          ? null
          : map['secretManagerStoredPassword'] as String,
      username: map['username'] as String,
    );
  }
}
