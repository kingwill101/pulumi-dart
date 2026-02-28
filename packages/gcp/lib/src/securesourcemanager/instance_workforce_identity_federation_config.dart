// ignore_for_file: unused_element, unnecessary_cast

class InstanceWorkforceIdentityFederationConfig {
  /// 'Whether Workforce Identity Federation is enabled.'
  final bool enabled;

  /// Creates a new [InstanceWorkforceIdentityFederationConfig].
  /// [enabled] 'Whether Workforce Identity Federation is enabled.'
  InstanceWorkforceIdentityFederationConfig({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory InstanceWorkforceIdentityFederationConfig.fromMap(
      Map<String, dynamic> map) {
    return InstanceWorkforceIdentityFederationConfig(
      enabled: map['enabled'] as bool,
    );
  }
}
