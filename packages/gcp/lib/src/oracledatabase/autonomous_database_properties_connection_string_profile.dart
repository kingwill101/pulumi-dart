// ignore_for_file: unused_element, unnecessary_cast

class AutonomousDatabasePropertiesConnectionStringProfile {
  /// The current consumer group being used by the connection.
  /// Possible values:
  /// CONSUMER_GROUP_UNSPECIFIED
  /// HIGH
  /// MEDIUM
  /// LOW
  /// TP
  /// TPURGENT
  final String? consumerGroup;

  /// The display name for the Autonomous Database. The name does not have to
  /// be unique within your project.
  final String? displayName;

  /// The host name format being currently used in connection string.
  /// Possible values:
  /// HOST_FORMAT_UNSPECIFIED
  /// FQDN
  /// IP
  final String? hostFormat;

  /// This field indicates if the connection string is regional and is only
  /// applicable for cross-region Data Guard.
  final bool? isRegional;

  /// The protocol being used by the connection.
  /// Possible values:
  /// PROTOCOL_UNSPECIFIED
  /// TCP
  /// TCPS
  final String? protocol;

  /// The current session mode of the connection.
  /// Possible values:
  /// SESSION_MODE_UNSPECIFIED
  /// DIRECT
  /// INDIRECT
  final String? sessionMode;

  /// The syntax of the connection string.
  /// Possible values:
  /// SYNTAX_FORMAT_UNSPECIFIED
  /// LONG
  /// EZCONNECT
  /// EZCONNECTPLUS
  final String? syntaxFormat;

  /// This field indicates the TLS authentication type of the connection.
  /// Possible values:
  /// TLS_AUTHENTICATION_UNSPECIFIED
  /// SERVER
  /// MUTUAL
  final String? tlsAuthentication;

  /// The value of the connection string.
  final String? value;

  /// Creates a new [AutonomousDatabasePropertiesConnectionStringProfile].
  /// [consumerGroup] The current consumer group being used by the connection.
  /// [displayName] The display name for the Autonomous Database. The name does not have to
  /// [hostFormat] The host name format being currently used in connection string.
  /// [isRegional] This field indicates if the connection string is regional and is only
  /// [protocol] The protocol being used by the connection.
  /// [sessionMode] The current session mode of the connection.
  /// [syntaxFormat] The syntax of the connection string.
  /// [tlsAuthentication] This field indicates the TLS authentication type of the connection.
  /// [value] The value of the connection string.
  AutonomousDatabasePropertiesConnectionStringProfile({
    this.consumerGroup,
    this.displayName,
    this.hostFormat,
    this.isRegional,
    this.protocol,
    this.sessionMode,
    this.syntaxFormat,
    this.tlsAuthentication,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final consumerGroupValue = consumerGroup;
    if (consumerGroupValue != null) {
      map['consumerGroup'] = consumerGroupValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final hostFormatValue = hostFormat;
    if (hostFormatValue != null) {
      map['hostFormat'] = hostFormatValue;
    }
    final isRegionalValue = isRegional;
    if (isRegionalValue != null) {
      map['isRegional'] = isRegionalValue;
    }
    final protocolValue = protocol;
    if (protocolValue != null) {
      map['protocol'] = protocolValue;
    }
    final sessionModeValue = sessionMode;
    if (sessionModeValue != null) {
      map['sessionMode'] = sessionModeValue;
    }
    final syntaxFormatValue = syntaxFormat;
    if (syntaxFormatValue != null) {
      map['syntaxFormat'] = syntaxFormatValue;
    }
    final tlsAuthenticationValue = tlsAuthentication;
    if (tlsAuthenticationValue != null) {
      map['tlsAuthentication'] = tlsAuthenticationValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory AutonomousDatabasePropertiesConnectionStringProfile.fromMap(
      Map<String, dynamic> map) {
    return AutonomousDatabasePropertiesConnectionStringProfile(
      consumerGroup:
          map['consumerGroup'] == null ? null : map['consumerGroup'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      hostFormat:
          map['hostFormat'] == null ? null : map['hostFormat'] as String,
      isRegional: map['isRegional'] == null ? null : map['isRegional'] as bool,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      sessionMode:
          map['sessionMode'] == null ? null : map['sessionMode'] as String,
      syntaxFormat:
          map['syntaxFormat'] == null ? null : map['syntaxFormat'] as String,
      tlsAuthentication: map['tlsAuthentication'] == null
          ? null
          : map['tlsAuthentication'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
