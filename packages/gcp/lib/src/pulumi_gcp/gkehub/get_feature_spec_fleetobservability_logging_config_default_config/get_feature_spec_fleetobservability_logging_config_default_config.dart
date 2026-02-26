// ignore_for_file: unused_element, unnecessary_cast

class GetFeatureSpecFleetobservabilityLoggingConfigDefaultConfig {
  /// Specified if fleet logging feature is enabled. Possible values: ["MODE_UNSPECIFIED", "COPY", "MOVE"]
  final String mode;

  GetFeatureSpecFleetobservabilityLoggingConfigDefaultConfig({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mode'] = mode;
    return map;
  }

  factory GetFeatureSpecFleetobservabilityLoggingConfigDefaultConfig.fromMap(
      Map<String, dynamic> map) {
    return GetFeatureSpecFleetobservabilityLoggingConfigDefaultConfig(
      mode: map['mode'] as String,
    );
  }
}
