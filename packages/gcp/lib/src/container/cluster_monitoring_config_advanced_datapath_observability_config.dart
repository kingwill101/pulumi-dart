// ignore_for_file: unused_element, unnecessary_cast

class ClusterMonitoringConfigAdvancedDatapathObservabilityConfig {
  /// Whether or not to enable advanced datapath metrics.
  final bool enableMetrics;

  /// Whether or not Relay is enabled.
  final bool enableRelay;

  /// Creates a new [ClusterMonitoringConfigAdvancedDatapathObservabilityConfig].
  /// [enableMetrics] Whether or not to enable advanced datapath metrics.
  /// [enableRelay] Whether or not Relay is enabled.
  ClusterMonitoringConfigAdvancedDatapathObservabilityConfig({
    required this.enableMetrics,
    required this.enableRelay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableMetrics': enableMetrics,
      'enableRelay': enableRelay,
    };
  }

  factory ClusterMonitoringConfigAdvancedDatapathObservabilityConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterMonitoringConfigAdvancedDatapathObservabilityConfig(
      enableMetrics: map['enableMetrics'] as bool,
      enableRelay: map['enableRelay'] as bool,
    );
  }
}
