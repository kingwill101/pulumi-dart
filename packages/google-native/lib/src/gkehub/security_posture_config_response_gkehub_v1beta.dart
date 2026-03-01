// ignore_for_file: unused_element, unnecessary_cast

/// SecurityPostureConfig defines the flags needed to enable/disable features for the Security Posture API.
class SecurityPostureConfigResponseGkehubV1beta {
  /// Sets which mode to use for Security Posture features.
  final String mode;

  /// Sets which mode to use for vulnerability scanning.
  final String vulnerabilityMode;

  /// Creates a new [SecurityPostureConfigResponseGkehubV1beta].
  /// [mode] Sets which mode to use for Security Posture features.
  /// [vulnerabilityMode] Sets which mode to use for vulnerability scanning.
  SecurityPostureConfigResponseGkehubV1beta({
    required this.mode,
    required this.vulnerabilityMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'vulnerabilityMode': vulnerabilityMode,
    };
  }

  factory SecurityPostureConfigResponseGkehubV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityPostureConfigResponseGkehubV1beta(
      mode: map['mode'] as String,
      vulnerabilityMode: map['vulnerabilityMode'] as String,
    );
  }
}
