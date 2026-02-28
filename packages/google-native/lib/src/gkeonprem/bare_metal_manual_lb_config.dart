// ignore_for_file: unused_element, unnecessary_cast


/// Represents configuration parameters for a manual load balancer.
class BareMetalManualLbConfig {
  /// Whether manual load balancing is enabled.
  final bool? enabled;

  /// Creates a new [BareMetalManualLbConfig].
  /// [enabled] Whether manual load balancing is enabled.
  BareMetalManualLbConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory BareMetalManualLbConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalManualLbConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

