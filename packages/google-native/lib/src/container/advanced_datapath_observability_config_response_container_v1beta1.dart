// ignore_for_file: unused_element, unnecessary_cast

/// AdvancedDatapathObservabilityConfig specifies configuration of observability features of advanced datapath.
class AdvancedDatapathObservabilityConfigResponseContainerV1beta1 {
  /// Expose flow metrics on nodes
  final bool enableMetrics;

  /// Method used to make Relay available
  final String relayMode;

  /// Creates a new [AdvancedDatapathObservabilityConfigResponseContainerV1beta1].
  /// [enableMetrics] Expose flow metrics on nodes
  /// [relayMode] Method used to make Relay available
  AdvancedDatapathObservabilityConfigResponseContainerV1beta1({
    required this.enableMetrics,
    required this.relayMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableMetrics': enableMetrics,
      'relayMode': relayMode,
    };
  }

  factory AdvancedDatapathObservabilityConfigResponseContainerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return AdvancedDatapathObservabilityConfigResponseContainerV1beta1(
      enableMetrics: map['enableMetrics'] as bool,
      relayMode: map['relayMode'] as String,
    );
  }
}
