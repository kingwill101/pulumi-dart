// ignore_for_file: unused_element, unnecessary_cast

class GetClusterMonitoringConfigAdvancedDatapathObservabilityConfig {
  /// Whether or not the advanced datapath metrics are enabled.
  final bool enableMetrics;

  /// Whether or not Relay is enabled.
  final bool enableRelay;

  GetClusterMonitoringConfigAdvancedDatapathObservabilityConfig({
    required this.enableMetrics,
    required this.enableRelay,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableMetrics'] = enableMetrics;
    map['enableRelay'] = enableRelay;
    return map;
  }

  factory GetClusterMonitoringConfigAdvancedDatapathObservabilityConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterMonitoringConfigAdvancedDatapathObservabilityConfig(
      enableMetrics: map['enableMetrics'] as bool,
      enableRelay: map['enableRelay'] as bool,
    );
  }
}
