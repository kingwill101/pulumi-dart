// ignore_for_file: unused_element, unnecessary_cast

import 'security_posture_config_mode_container_v1beta1.dart';
import 'security_posture_config_vulnerability_mode_container_v1beta1.dart';

/// SecurityPostureConfig defines the flags needed to enable/disable features for the Security Posture API.
class SecurityPostureConfigContainerV1beta1 {
  /// Sets which mode to use for Security Posture features.
  final SecurityPostureConfigModeContainerV1beta1? mode;

  /// Sets which mode to use for vulnerability scanning.
  final SecurityPostureConfigVulnerabilityModeContainerV1beta1?
      vulnerabilityMode;

  SecurityPostureConfigContainerV1beta1({
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

  factory SecurityPostureConfigContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return SecurityPostureConfigContainerV1beta1(
      mode: map['mode'] == null
          ? null
          : SecurityPostureConfigModeContainerV1beta1.fromValue(
              map['mode'] as String),
      vulnerabilityMode: map['vulnerabilityMode'] == null
          ? null
          : SecurityPostureConfigVulnerabilityModeContainerV1beta1.fromValue(
              map['vulnerabilityMode'] as String),
    );
  }
}
