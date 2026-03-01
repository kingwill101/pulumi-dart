// ignore_for_file: unused_element, unnecessary_cast


/// Observability profile to enable advanced network metrics and flow logs with historical contexts.
class AdvancedNetworkingObservability {
  /// Indicates the enablement of Advanced Networking observability functionalities on clusters.
  final bool? enabled;

  /// Creates a new [AdvancedNetworkingObservability].
  /// [enabled] Indicates the enablement of Advanced Networking observability functionalities on clusters.
  AdvancedNetworkingObservability({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory AdvancedNetworkingObservability.fromMap(Map<String, dynamic> map) {
    return AdvancedNetworkingObservability(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

