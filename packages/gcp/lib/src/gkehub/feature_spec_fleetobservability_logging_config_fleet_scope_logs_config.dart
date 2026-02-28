// ignore_for_file: unused_element, unnecessary_cast

class FeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig {
  /// Specified if fleet logging feature is enabled.
  /// Possible values are: `MODE_UNSPECIFIED`, `COPY`, `MOVE`.
  final String? mode;

  /// Creates a new [FeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig].
  /// [mode] Specified if fleet logging feature is enabled.
  FeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig({
    this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
    }
    return map;
  }

  factory FeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig.fromMap(
      Map<String, dynamic> map) {
    return FeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig(
      mode: map['mode'] == null ? null : map['mode'] as String,
    );
  }
}
