// ignore_for_file: unused_element, unnecessary_cast

class GetAutonomousDatabasesAutonomousDatabasePropertyConnectionStringProfile {
  /// The current consumer group being used by the connection.
  /// Possible values:
  /// CONSUMER_GROUP_UNSPECIFIED
  /// HIGH
  /// MEDIUM
  /// LOW
  /// TP
  /// TPURGENT
  final String consumerGroup;

  /// The display name for the database connection.
  final String displayName;

  /// The host name format being currently used in connection string.
  /// Possible values:
  /// HOST_FORMAT_UNSPECIFIED
  /// FQDN
  /// IP
  final String hostFormat;

  /// This field indicates if the connection string is regional and is only
  /// applicable for cross-region Data Guard.
  final bool isRegional;

  /// The protocol being used by the connection.
  /// Possible values:
  /// PROTOCOL_UNSPECIFIED
  /// TCP
  /// TCPS
  final String protocol;

  /// The current session mode of the connection.
  /// Possible values:
  /// SESSION_MODE_UNSPECIFIED
  /// DIRECT
  /// INDIRECT
  final String sessionMode;

  /// The syntax of the connection string.
  /// Possible values:
  /// SYNTAX_FORMAT_UNSPECIFIED
  /// LONG
  /// EZCONNECT
  /// EZCONNECTPLUS
  final String syntaxFormat;

  /// This field indicates the TLS authentication type of the connection.
  /// Possible values:
  /// TLS_AUTHENTICATION_UNSPECIFIED
  /// SERVER
  /// MUTUAL
  final String tlsAuthentication;

  /// The value of the connection string.
  final String value;

  /// Creates a new [GetAutonomousDatabasesAutonomousDatabasePropertyConnectionStringProfile].
  /// [consumerGroup] The current consumer group being used by the connection.
  /// [displayName] The display name for the database connection.
  /// [hostFormat] The host name format being currently used in connection string.
  /// [isRegional] This field indicates if the connection string is regional and is only
  /// [protocol] The protocol being used by the connection.
  /// [sessionMode] The current session mode of the connection.
  /// [syntaxFormat] The syntax of the connection string.
  /// [tlsAuthentication] This field indicates the TLS authentication type of the connection.
  /// [value] The value of the connection string.
  GetAutonomousDatabasesAutonomousDatabasePropertyConnectionStringProfile({
    required this.consumerGroup,
    required this.displayName,
    required this.hostFormat,
    required this.isRegional,
    required this.protocol,
    required this.sessionMode,
    required this.syntaxFormat,
    required this.tlsAuthentication,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['consumerGroup'] = consumerGroup;
    map['displayName'] = displayName;
    map['hostFormat'] = hostFormat;
    map['isRegional'] = isRegional;
    map['protocol'] = protocol;
    map['sessionMode'] = sessionMode;
    map['syntaxFormat'] = syntaxFormat;
    map['tlsAuthentication'] = tlsAuthentication;
    map['value'] = value;
    return map;
  }

  factory GetAutonomousDatabasesAutonomousDatabasePropertyConnectionStringProfile.fromMap(
      Map<String, dynamic> map) {
    return GetAutonomousDatabasesAutonomousDatabasePropertyConnectionStringProfile(
      consumerGroup: map['consumerGroup'] as String,
      displayName: map['displayName'] as String,
      hostFormat: map['hostFormat'] as String,
      isRegional: map['isRegional'] as bool,
      protocol: map['protocol'] as String,
      sessionMode: map['sessionMode'] as String,
      syntaxFormat: map['syntaxFormat'] as String,
      tlsAuthentication: map['tlsAuthentication'] as String,
      value: map['value'] as String,
    );
  }
}
