// ignore_for_file: unused_element, unnecessary_cast

class FleetDefaultClusterConfigSecurityPostureConfig {
  /// Sets which mode to use for Security Posture features.
  /// Possible values are: `DISABLED`, `BASIC`, `ENTERPRISE`.
  final String? mode;

  /// Sets which mode to use for vulnerability scanning.
  /// Possible values are: `VULNERABILITY_DISABLED`, `VULNERABILITY_BASIC`, `VULNERABILITY_ENTERPRISE`.
  final String? vulnerabilityMode;

  /// Creates a new [FleetDefaultClusterConfigSecurityPostureConfig].
  /// [mode] Sets which mode to use for Security Posture features.
  /// [vulnerabilityMode] Sets which mode to use for vulnerability scanning.
  FleetDefaultClusterConfigSecurityPostureConfig({
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

  factory FleetDefaultClusterConfigSecurityPostureConfig.fromMap(
      Map<String, dynamic> map) {
    return FleetDefaultClusterConfigSecurityPostureConfig(
      mode: map['mode'] == null ? null : map['mode'] as String,
      vulnerabilityMode: map['vulnerabilityMode'] == null
          ? null
          : map['vulnerabilityMode'] as String,
    );
  }
}
