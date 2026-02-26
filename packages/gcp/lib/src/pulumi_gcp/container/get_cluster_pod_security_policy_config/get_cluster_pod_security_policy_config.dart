// ignore_for_file: unused_element, unnecessary_cast

class GetClusterPodSecurityPolicyConfig {
  /// Enable the PodSecurityPolicy controller for this cluster. If enabled, pods must be valid under a PodSecurityPolicy to be created.
  final bool enabled;

  GetClusterPodSecurityPolicyConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GetClusterPodSecurityPolicyConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterPodSecurityPolicyConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
