// ignore_for_file: unused_element, unnecessary_cast

/// Represents configuration parameters for a manual load balancer.
class BareMetalManualLbConfigResponse {
  /// Whether manual load balancing is enabled.
  final bool enabled;

  BareMetalManualLbConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory BareMetalManualLbConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalManualLbConfigResponse(
      enabled: map['enabled'] as bool,
    );
  }
}
