// ignore_for_file: unused_element, unnecessary_cast

import 'security_posture_config_mode3.dart';
import 'security_posture_config_vulnerability_mode3.dart';

/// SecurityPostureConfig defines the flags needed to enable/disable features for the Security Posture API.
class SecurityPostureConfig3 {
  /// Sets which mode to use for Security Posture features.
  final SecurityPostureConfigMode3? mode;

  /// Sets which mode to use for vulnerability scanning.
  final SecurityPostureConfigVulnerabilityMode3? vulnerabilityMode;

  SecurityPostureConfig3({
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

  factory SecurityPostureConfig3.fromMap(Map<String, dynamic> map) {
    return SecurityPostureConfig3(
      mode: map['mode'] == null
          ? null
          : SecurityPostureConfigMode3.fromValue(map['mode'] as String),
      vulnerabilityMode: map['vulnerabilityMode'] == null
          ? null
          : SecurityPostureConfigVulnerabilityMode3.fromValue(
              map['vulnerabilityMode'] as String),
    );
  }
}
