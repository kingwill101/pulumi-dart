// ignore_for_file: unused_element, unnecessary_cast

class ClusterSecurityPostureConfig {
  /// Sets the mode of the Kubernetes security posture API's off-cluster features. Available options include `DISABLED`, `BASIC`, and `ENTERPRISE`.
  final String? mode;

  /// Sets the mode of the Kubernetes security posture API's workload vulnerability scanning. Available options include `VULNERABILITY_DISABLED`, `VULNERABILITY_BASIC` and `VULNERABILITY_ENTERPRISE`.
  final String? vulnerabilityMode;

  /// Creates a new [ClusterSecurityPostureConfig].
  /// [mode] Sets the mode of the Kubernetes security posture API's off-cluster features. Available options include `DISABLED`, `BASIC`, and `ENTERPRISE`.
  /// [vulnerabilityMode] Sets the mode of the Kubernetes security posture API's workload vulnerability scanning. Available options include `VULNERABILITY_DISABLED`, `VULNERABILITY_BASIC` and `VULNERABILITY_ENTERPRISE`.
  ClusterSecurityPostureConfig({this.mode, this.vulnerabilityMode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'vulnerabilityMode': ?vulnerabilityMode,
    };
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
