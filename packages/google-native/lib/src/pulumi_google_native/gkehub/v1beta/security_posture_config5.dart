// ignore_for_file: unused_element, unnecessary_cast

import 'security_posture_config_mode5.dart';
import 'security_posture_config_vulnerability_mode5.dart';

/// SecurityPostureConfig defines the flags needed to enable/disable features for the Security Posture API.
class SecurityPostureConfig5 {
  /// Sets which mode to use for Security Posture features.
  final SecurityPostureConfigMode5? mode;

  /// Sets which mode to use for vulnerability scanning.
  final SecurityPostureConfigVulnerabilityMode5? vulnerabilityMode;

  SecurityPostureConfig5({
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

  factory SecurityPostureConfig5.fromMap(Map<String, dynamic> map) {
    return SecurityPostureConfig5(
      mode: map['mode'] == null
          ? null
          : SecurityPostureConfigMode5.fromValue(map['mode'] as String),
      vulnerabilityMode: map['vulnerabilityMode'] == null
          ? null
          : SecurityPostureConfigVulnerabilityMode5.fromValue(
              map['vulnerabilityMode'] as String),
    );
  }
}
