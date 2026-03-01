// ignore_for_file: unused_element, unnecessary_cast


/// Microsoft Defender settings for the security profile threat detection.
class ManagedClusterSecurityProfileDefenderSecurityMonitoringResponse {
  /// Whether to enable Defender threat detection
  final bool? enabled;

  /// Creates a new [ManagedClusterSecurityProfileDefenderSecurityMonitoringResponse].
  /// [enabled] Whether to enable Defender threat detection
  ManagedClusterSecurityProfileDefenderSecurityMonitoringResponse({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ManagedClusterSecurityProfileDefenderSecurityMonitoringResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterSecurityProfileDefenderSecurityMonitoringResponse(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

