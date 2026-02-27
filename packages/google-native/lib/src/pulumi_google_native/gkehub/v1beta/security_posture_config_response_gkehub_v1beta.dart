// ignore_for_file: unused_element, unnecessary_cast

/// SecurityPostureConfig defines the flags needed to enable/disable features for the Security Posture API.
class SecurityPostureConfigResponseGkehubV1beta {
  /// Sets which mode to use for Security Posture features.
  final String mode;

  /// Sets which mode to use for vulnerability scanning.
  final String vulnerabilityMode;

  SecurityPostureConfigResponseGkehubV1beta({
    required this.mode,
    required this.vulnerabilityMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mode'] = mode;
    map['vulnerabilityMode'] = vulnerabilityMode;
    return map;
  }

  factory SecurityPostureConfigResponseGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return SecurityPostureConfigResponseGkehubV1beta(
      mode: map['mode'] as String,
      vulnerabilityMode: map['vulnerabilityMode'] as String,
    );
  }
}
