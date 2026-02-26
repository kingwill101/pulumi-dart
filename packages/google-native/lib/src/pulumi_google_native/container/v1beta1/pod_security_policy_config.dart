// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the PodSecurityPolicy feature.
class PodSecurityPolicyConfig {
  /// Enable the PodSecurityPolicy controller for this cluster. If enabled, pods must be valid under a PodSecurityPolicy to be created.
  final bool? enabled;

  PodSecurityPolicyConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory PodSecurityPolicyConfig.fromMap(Map<String, dynamic> map) {
    return PodSecurityPolicyConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
