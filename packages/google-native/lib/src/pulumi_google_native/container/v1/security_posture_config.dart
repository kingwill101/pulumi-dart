// ignore_for_file: unused_element, unnecessary_cast

import 'security_posture_config_mode.dart';
import 'security_posture_config_vulnerability_mode.dart';

/// SecurityPostureConfig defines the flags needed to enable/disable features for the Security Posture API.
class SecurityPostureConfig {
  /// Sets which mode to use for Security Posture features.
  final SecurityPostureConfigMode? mode;

  /// Sets which mode to use for vulnerability scanning.
  final SecurityPostureConfigVulnerabilityMode? vulnerabilityMode;

  SecurityPostureConfig({
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

  factory SecurityPostureConfig.fromMap(Map<String, dynamic> map) {
    return SecurityPostureConfig(
      mode: map['mode'] == null
          ? null
          : SecurityPostureConfigMode.fromValue(map['mode'] as String),
      vulnerabilityMode: map['vulnerabilityMode'] == null
          ? null
          : SecurityPostureConfigVulnerabilityMode.fromValue(
              map['vulnerabilityMode'] as String),
    );
  }
}
