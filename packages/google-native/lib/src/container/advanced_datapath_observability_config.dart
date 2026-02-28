// ignore_for_file: unused_element, unnecessary_cast

import 'advanced_datapath_observability_config_relay_mode.dart';

/// AdvancedDatapathObservabilityConfig specifies configuration of observability features of advanced datapath.
class AdvancedDatapathObservabilityConfig {
  /// Expose flow metrics on nodes
  final bool? enableMetrics;
  /// Method used to make Relay available
  final AdvancedDatapathObservabilityConfigRelayMode? relayMode;

  /// Creates a new [AdvancedDatapathObservabilityConfig].
  /// [enableMetrics] Expose flow metrics on nodes
  /// [relayMode] Method used to make Relay available
  AdvancedDatapathObservabilityConfig({
    this.enableMetrics,
    this.relayMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableMetrics': ?enableMetrics,
      'relayMode': ?relayMode == null ? null : relayMode!.value,
    };
  }

  factory AdvancedDatapathObservabilityConfig.fromMap(Map<String, dynamic> map) {
    return AdvancedDatapathObservabilityConfig(
      enableMetrics: map['enableMetrics'] == null ? null : map['enableMetrics'] as bool,
      relayMode: map['relayMode'] == null ? null : AdvancedDatapathObservabilityConfigRelayMode.fromValue(map['relayMode'] as String),
    );
  }
}

