// ignore_for_file: unused_element, unnecessary_cast

class GetFeatureSpecFleetobservabilityLoggingConfigDefaultConfig {
  /// Specified if fleet logging feature is enabled. Possible values: ["MODE_UNSPECIFIED", "COPY", "MOVE"]
  final String mode;

  /// Creates a new [GetFeatureSpecFleetobservabilityLoggingConfigDefaultConfig].
  /// [mode] Specified if fleet logging feature is enabled. Possible values: ["MODE_UNSPECIFIED", "COPY", "MOVE"]
  GetFeatureSpecFleetobservabilityLoggingConfigDefaultConfig({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'mode': mode};
  }

  factory GetFeatureSpecFleetobservabilityLoggingConfigDefaultConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetFeatureSpecFleetobservabilityLoggingConfigDefaultConfig(
      mode: map['mode'] as String,
    );
  }
}
