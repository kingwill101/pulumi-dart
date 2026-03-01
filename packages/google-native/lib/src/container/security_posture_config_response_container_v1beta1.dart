// ignore_for_file: unused_element, unnecessary_cast

/// SecurityPostureConfig defines the flags needed to enable/disable features for the Security Posture API.
class SecurityPostureConfigResponseContainerV1beta1 {
  /// Sets which mode to use for Security Posture features.
  final String mode;

  /// Sets which mode to use for vulnerability scanning.
  final String vulnerabilityMode;

  /// Creates a new [SecurityPostureConfigResponseContainerV1beta1].
  /// [mode] Sets which mode to use for Security Posture features.
  /// [vulnerabilityMode] Sets which mode to use for vulnerability scanning.
  SecurityPostureConfigResponseContainerV1beta1({
    required this.mode,
    required this.vulnerabilityMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
      'vulnerabilityMode': vulnerabilityMode,
    };
  }

  factory SecurityPostureConfigResponseContainerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityPostureConfigResponseContainerV1beta1(
      mode: map['mode'] as String,
      vulnerabilityMode: map['vulnerabilityMode'] as String,
    );
  }
}
