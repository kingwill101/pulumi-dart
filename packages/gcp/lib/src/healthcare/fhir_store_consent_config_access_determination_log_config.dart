// ignore_for_file: unused_element, unnecessary_cast

class FhirStoreConsentConfigAccessDeterminationLogConfig {
  /// Controls the amount of detail to include as part of the audit logs.
  /// Default value is `MINIMUM`.
  /// Possible values are: `LOG_LEVEL_UNSPECIFIED`, `DISABLED`, `MINIMUM`, `VERBOSE`.
  final String? logLevel;

  /// Creates a new [FhirStoreConsentConfigAccessDeterminationLogConfig].
  /// [logLevel] Controls the amount of detail to include as part of the audit logs.
  FhirStoreConsentConfigAccessDeterminationLogConfig({
    this.logLevel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final logLevelValue = logLevel;
    if (logLevelValue != null) {
      map['logLevel'] = logLevelValue;
    }
    return map;
  }

  factory FhirStoreConsentConfigAccessDeterminationLogConfig.fromMap(
      Map<String, dynamic> map) {
    return FhirStoreConsentConfigAccessDeterminationLogConfig(
      logLevel: map['logLevel'] == null ? null : map['logLevel'] as String,
    );
  }
}
