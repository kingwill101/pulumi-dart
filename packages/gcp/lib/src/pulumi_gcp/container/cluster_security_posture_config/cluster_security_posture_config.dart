// ignore_for_file: unused_element, unnecessary_cast

class ClusterSecurityPostureConfig {
  /// Sets the mode of the Kubernetes security posture API's off-cluster features. Available options include `DISABLED`, `BASIC`, and `ENTERPRISE`.
  final String? mode;

  /// Sets the mode of the Kubernetes security posture API's workload vulnerability scanning. Available options include `VULNERABILITY_DISABLED`, `VULNERABILITY_BASIC` and `VULNERABILITY_ENTERPRISE`.
  final String? vulnerabilityMode;

  ClusterSecurityPostureConfig({
    this.mode,
    this.vulnerabilityMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
    }
    final vulnerabilityModeValue = vulnerabilityMode;
    if (vulnerabilityModeValue != null) {
      map['vulnerabilityMode'] = vulnerabilityModeValue;
    }
    return map;
  }

  factory ClusterSecurityPostureConfig.fromMap(Map<String, dynamic> map) {
    return ClusterSecurityPostureConfig(
      mode: map['mode'] == null ? null : map['mode'] as String,
      vulnerabilityMode: map['vulnerabilityMode'] == null
          ? null
          : map['vulnerabilityMode'] as String,
    );
  }
}
