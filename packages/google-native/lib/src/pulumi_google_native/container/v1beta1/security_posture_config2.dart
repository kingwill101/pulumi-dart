// ignore_for_file: unused_element, unnecessary_cast

import 'security_posture_config_mode2.dart';
import 'security_posture_config_vulnerability_mode2.dart';

/// SecurityPostureConfig defines the flags needed to enable/disable features for the Security Posture API.
class SecurityPostureConfig2 {
  /// Sets which mode to use for Security Posture features.
  final SecurityPostureConfigMode2? mode;

  /// Sets which mode to use for vulnerability scanning.
  final SecurityPostureConfigVulnerabilityMode2? vulnerabilityMode;

  SecurityPostureConfig2({
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

  factory SecurityPostureConfig2.fromMap(Map<String, dynamic> map) {
    return SecurityPostureConfig2(
      mode: map['mode'] == null
          ? null
          : SecurityPostureConfigMode2.fromValue(map['mode'] as String),
      vulnerabilityMode: map['vulnerabilityMode'] == null
          ? null
          : SecurityPostureConfigVulnerabilityMode2.fromValue(
              map['vulnerabilityMode'] as String),
    );
  }
}
