// ignore_for_file: unused_element, unnecessary_cast

import 'advanced_datapath_observability_config_relay_mode2.dart';

/// AdvancedDatapathObservabilityConfig specifies configuration of observability features of advanced datapath.
class AdvancedDatapathObservabilityConfig2 {
  /// Expose flow metrics on nodes
  final bool? enableMetrics;

  /// Method used to make Relay available
  final AdvancedDatapathObservabilityConfigRelayMode2? relayMode;

  AdvancedDatapathObservabilityConfig2({
    this.enableMetrics,
    this.relayMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableMetricsValue = enableMetrics;
    if (enableMetricsValue != null) {
      map['enableMetrics'] = enableMetricsValue;
    }
    final relayModeValue = relayMode;
    if (relayModeValue != null) {
      map['relayMode'] = relayModeValue.value;
    }
    return map;
  }

  factory AdvancedDatapathObservabilityConfig2.fromMap(
      Map<String, dynamic> map) {
    return AdvancedDatapathObservabilityConfig2(
      enableMetrics:
          map['enableMetrics'] == null ? null : map['enableMetrics'] as bool,
      relayMode: map['relayMode'] == null
          ? null
          : AdvancedDatapathObservabilityConfigRelayMode2.fromValue(
              map['relayMode'] as String),
    );
  }
}
