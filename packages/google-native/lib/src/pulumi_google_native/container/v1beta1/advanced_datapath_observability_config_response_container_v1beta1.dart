// ignore_for_file: unused_element, unnecessary_cast

/// AdvancedDatapathObservabilityConfig specifies configuration of observability features of advanced datapath.
class AdvancedDatapathObservabilityConfigResponseContainerV1beta1 {
  /// Expose flow metrics on nodes
  final bool enableMetrics;

  /// Method used to make Relay available
  final String relayMode;

  AdvancedDatapathObservabilityConfigResponseContainerV1beta1({
    required this.enableMetrics,
    required this.relayMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableMetrics'] = enableMetrics;
    map['relayMode'] = relayMode;
    return map;
  }

  factory AdvancedDatapathObservabilityConfigResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return AdvancedDatapathObservabilityConfigResponseContainerV1beta1(
      enableMetrics: map['enableMetrics'] as bool,
      relayMode: map['relayMode'] as String,
    );
  }
}
