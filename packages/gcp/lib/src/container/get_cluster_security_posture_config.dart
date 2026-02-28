// ignore_for_file: unused_element, unnecessary_cast


class GetClusterSecurityPostureConfig {
  /// Sets the mode of the Kubernetes security posture API's off-cluster features. Available options include DISABLED, BASIC, and ENTERPRISE.
  final String mode;
  /// Sets the mode of the Kubernetes security posture API's workload vulnerability scanning. Available options include VULNERABILITY_DISABLED, VULNERABILITY_BASIC and VULNERABILITY_ENTERPRISE.
  final String vulnerabilityMode;

  /// Creates a new [GetClusterSecurityPostureConfig].
  /// [mode] Sets the mode of the Kubernetes security posture API's off-cluster features. Available options include DISABLED, BASIC, and ENTERPRISE.
  /// [vulnerabilityMode] Sets the mode of the Kubernetes security posture API's workload vulnerability scanning. Available options include VULNERABILITY_DISABLED, VULNERABILITY_BASIC and VULNERABILITY_ENTERPRISE.
  GetClusterSecurityPostureConfig({
    required this.mode,
    required this.vulnerabilityMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'vulnerabilityMode': vulnerabilityMode,
    };
  }

  factory GetClusterSecurityPostureConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterSecurityPostureConfig(
      mode: map['mode'] as String,
      vulnerabilityMode: map['vulnerabilityMode'] as String,
    );
  }
}

