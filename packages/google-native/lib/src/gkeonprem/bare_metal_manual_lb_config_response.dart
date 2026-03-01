// ignore_for_file: unused_element, unnecessary_cast

/// Represents configuration parameters for a manual load balancer.
class BareMetalManualLbConfigResponse {
  /// Whether manual load balancing is enabled.
  final bool enabled;

  /// Creates a new [BareMetalManualLbConfigResponse].
  /// [enabled] Whether manual load balancing is enabled.
  BareMetalManualLbConfigResponse({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory BareMetalManualLbConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalManualLbConfigResponse(enabled: map['enabled'] as bool);
  }
}
