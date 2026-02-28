// ignore_for_file: unused_element, unnecessary_cast

import 'access_determination_log_config_log_level.dart';

/// Configures consent audit log config for FHIR create, read, update, and delete (CRUD) operations. Cloud audit log for healthcare API must be [enabled](https://cloud.google.com/logging/docs/audit/configure-data-access#config-console-enable). The consent-related logs are included as part of `protoPayload.metadata`.
class AccessDeterminationLogConfig {
  /// Optional. Controls the amount of detail to include as part of the audit logs.
  final AccessDeterminationLogConfigLogLevel? logLevel;

  /// Creates a new [AccessDeterminationLogConfig].
  /// [logLevel] Optional. Controls the amount of detail to include as part of the audit logs.
  AccessDeterminationLogConfig({
    this.logLevel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final logLevelValue = logLevel;
    if (logLevelValue != null) {
      map['logLevel'] = logLevelValue.value;
    }
    return map;
  }

  factory AccessDeterminationLogConfig.fromMap(Map<String, dynamic> map) {
    return AccessDeterminationLogConfig(
      logLevel: map['logLevel'] == null
          ? null
          : AccessDeterminationLogConfigLogLevel.fromValue(
              map['logLevel'] as String),
    );
  }
}
