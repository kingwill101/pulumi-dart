// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The logging properties of the connected registry.
class LoggingProperties {
  /// Indicates whether audit logs are enabled on the connected registry.
  final pulumi.Input<dynamic>? auditLogStatus;
  /// The verbosity of logs persisted on the connected registry.
  final pulumi.Input<dynamic>? logLevel;

  /// Creates a new [LoggingProperties].
  /// [auditLogStatus] Indicates whether audit logs are enabled on the connected registry.
  /// [logLevel] The verbosity of logs persisted on the connected registry.
  LoggingProperties({
    pulumi.Input<dynamic>? auditLogStatus,
    pulumi.Input<dynamic>? logLevel,
  }) : auditLogStatus = auditLogStatus ?? pulumi.Input.fromValue('Disabled'), logLevel = logLevel ?? pulumi.Input.fromValue('Information');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditLogStatus': ?auditLogStatus,
      'logLevel': ?logLevel,
    };
  }

  factory LoggingProperties.fromMap(Map<String, dynamic> map) {
    return LoggingProperties(
      auditLogStatus: (() { final guardedValue = map['auditLogStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      logLevel: (() { final guardedValue = map['logLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
