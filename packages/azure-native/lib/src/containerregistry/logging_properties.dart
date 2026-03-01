// ignore_for_file: unused_element, unnecessary_cast


/// The logging properties of the connected registry.
class LoggingProperties {
  /// Indicates whether audit logs are enabled on the connected registry.
  final String? auditLogStatus;
  /// The verbosity of logs persisted on the connected registry.
  final String? logLevel;

  /// Creates a new [LoggingProperties].
  /// [auditLogStatus] Indicates whether audit logs are enabled on the connected registry.
  /// [logLevel] The verbosity of logs persisted on the connected registry.
  LoggingProperties({
    this.auditLogStatus,
    this.logLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditLogStatus': ?auditLogStatus,
      'logLevel': ?logLevel,
    };
  }

  factory LoggingProperties.fromMap(Map<String, dynamic> map) {
    return LoggingProperties(
      auditLogStatus: map['auditLogStatus'] == null ? null : map['auditLogStatus'] as String,
      logLevel: map['logLevel'] == null ? null : map['logLevel'] as String,
    );
  }
}

