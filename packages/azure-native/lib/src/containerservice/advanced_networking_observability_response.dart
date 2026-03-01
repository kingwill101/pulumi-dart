// ignore_for_file: unused_element, unnecessary_cast


/// Observability profile to enable advanced network metrics and flow logs with historical contexts.
class AdvancedNetworkingObservabilityResponse {
  /// Indicates the enablement of Advanced Networking observability functionalities on clusters.
  final bool? enabled;

  /// Creates a new [AdvancedNetworkingObservabilityResponse].
  /// [enabled] Indicates the enablement of Advanced Networking observability functionalities on clusters.
  AdvancedNetworkingObservabilityResponse({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory AdvancedNetworkingObservabilityResponse.fromMap(Map<String, dynamic> map) {
    return AdvancedNetworkingObservabilityResponse(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

