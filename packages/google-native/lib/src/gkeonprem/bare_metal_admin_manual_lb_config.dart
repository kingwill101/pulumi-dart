// ignore_for_file: unused_element, unnecessary_cast

/// BareMetalAdminManualLbConfig represents configuration parameters for a manual load balancer.
class BareMetalAdminManualLbConfig {
  /// Whether manual load balancing is enabled.
  final bool? enabled;

  /// Creates a new [BareMetalAdminManualLbConfig].
  /// [enabled] Whether manual load balancing is enabled.
  BareMetalAdminManualLbConfig({this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory BareMetalAdminManualLbConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminManualLbConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
