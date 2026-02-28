// ignore_for_file: unused_element, unnecessary_cast

import 'security_posture_config_mode_gkehub_v1alpha.dart';
import 'security_posture_config_vulnerability_mode_gkehub_v1alpha.dart';

/// SecurityPostureConfig defines the flags needed to enable/disable features for the Security Posture API.
class SecurityPostureConfigGkehubV1alpha {
  /// Sets which mode to use for Security Posture features.
  final SecurityPostureConfigModeGkehubV1alpha? mode;

  /// Sets which mode to use for vulnerability scanning.
  final SecurityPostureConfigVulnerabilityModeGkehubV1alpha? vulnerabilityMode;

  /// Creates a new [SecurityPostureConfigGkehubV1alpha].
  /// [mode] Sets which mode to use for Security Posture features.
  /// [vulnerabilityMode] Sets which mode to use for vulnerability scanning.
  SecurityPostureConfigGkehubV1alpha({
    this.mode,
    this.vulnerabilityMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue.value;
    }
    final vulnerabilityModeValue = vulnerabilityMode;
    if (vulnerabilityModeValue != null) {
      map['vulnerabilityMode'] = vulnerabilityModeValue.value;
    }
    return map;
  }

  factory SecurityPostureConfigGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return SecurityPostureConfigGkehubV1alpha(
      mode: map['mode'] == null
          ? null
          : SecurityPostureConfigModeGkehubV1alpha.fromValue(
              map['mode'] as String),
      vulnerabilityMode: map['vulnerabilityMode'] == null
          ? null
          : SecurityPostureConfigVulnerabilityModeGkehubV1alpha.fromValue(
              map['vulnerabilityMode'] as String),
    );
  }
}
