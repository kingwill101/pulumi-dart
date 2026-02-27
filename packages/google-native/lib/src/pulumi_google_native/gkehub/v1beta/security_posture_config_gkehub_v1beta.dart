// ignore_for_file: unused_element, unnecessary_cast

import 'security_posture_config_mode_gkehub_v1beta.dart';
import 'security_posture_config_vulnerability_mode_gkehub_v1beta.dart';

/// SecurityPostureConfig defines the flags needed to enable/disable features for the Security Posture API.
class SecurityPostureConfigGkehubV1beta {
  /// Sets which mode to use for Security Posture features.
  final SecurityPostureConfigModeGkehubV1beta? mode;

  /// Sets which mode to use for vulnerability scanning.
  final SecurityPostureConfigVulnerabilityModeGkehubV1beta? vulnerabilityMode;

  SecurityPostureConfigGkehubV1beta({
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

  factory SecurityPostureConfigGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return SecurityPostureConfigGkehubV1beta(
      mode: map['mode'] == null
          ? null
          : SecurityPostureConfigModeGkehubV1beta.fromValue(
              map['mode'] as String),
      vulnerabilityMode: map['vulnerabilityMode'] == null
          ? null
          : SecurityPostureConfigVulnerabilityModeGkehubV1beta.fromValue(
              map['vulnerabilityMode'] as String),
    );
  }
}
