// ignore_for_file: unused_element, unnecessary_cast

class AttachedClusterSecurityPostureConfig {
  /// Sets the mode of the Kubernetes security posture API's workload vulnerability scanning.
  /// Possible values are: `VULNERABILITY_DISABLED`, `VULNERABILITY_ENTERPRISE`.
  final String vulnerabilityMode;

  /// Creates a new [AttachedClusterSecurityPostureConfig].
  /// [vulnerabilityMode] Sets the mode of the Kubernetes security posture API's workload vulnerability scanning.
  AttachedClusterSecurityPostureConfig({required this.vulnerabilityMode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'vulnerabilityMode': vulnerabilityMode};
  }

  factory AttachedClusterSecurityPostureConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return AttachedClusterSecurityPostureConfig(
      vulnerabilityMode: map['vulnerabilityMode'] as String,
    );
  }
}
