// ignore_for_file: unused_element, unnecessary_cast

import 'security_posture_config_mode_gkehub_v1beta.dart';
import 'security_posture_config_vulnerability_mode_gkehub_v1beta.dart';

/// SecurityPostureConfig defines the flags needed to enable/disable features for the Security Posture API.
class SecurityPostureConfigGkehubV1beta {
  /// Sets which mode to use for Security Posture features.
  final SecurityPostureConfigModeGkehubV1beta? mode;
  /// Sets which mode to use for vulnerability scanning.
  final SecurityPostureConfigVulnerabilityModeGkehubV1beta? vulnerabilityMode;

  /// Creates a new [SecurityPostureConfigGkehubV1beta].
  /// [mode] Sets which mode to use for Security Posture features.
  /// [vulnerabilityMode] Sets which mode to use for vulnerability scanning.
  SecurityPostureConfigGkehubV1beta({
    this.mode,
    this.vulnerabilityMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode == null ? null : mode!.value,
      'vulnerabilityMode': ?vulnerabilityMode == null ? null : vulnerabilityMode!.value,
    };
  }

  factory SecurityPostureConfigGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return SecurityPostureConfigGkehubV1beta(
      mode: map['mode'] == null ? null : SecurityPostureConfigModeGkehubV1beta.fromValue(map['mode'] as String),
      vulnerabilityMode: map['vulnerabilityMode'] == null ? null : SecurityPostureConfigVulnerabilityModeGkehubV1beta.fromValue(map['vulnerabilityMode'] as String),
    );
  }
}

