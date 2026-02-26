// ignore_for_file: unused_element, unnecessary_cast

class GetFeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig {
  /// Specified if fleet logging feature is enabled. Possible values: ["MODE_UNSPECIFIED", "COPY", "MOVE"]
  final String mode;

  GetFeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mode'] = mode;
    return map;
  }

  factory GetFeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig.fromMap(
      Map<String, dynamic> map) {
    return GetFeatureSpecFleetobservabilityLoggingConfigFleetScopeLogsConfig(
      mode: map['mode'] as String,
    );
  }
}
