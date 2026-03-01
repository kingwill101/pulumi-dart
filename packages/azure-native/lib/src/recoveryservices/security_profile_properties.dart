// ignore_for_file: unused_element, unnecessary_cast


/// Security profile input.
class SecurityProfileProperties {
  /// A value indicating whether confidential compute encryption to be enabled.
  final String? targetVmConfidentialEncryption;
  /// A value indicating whether integrity monitoring to be enabled.
  final String? targetVmMonitoring;
  /// A value indicating whether secure boot to be enabled.
  final String? targetVmSecureBoot;
  /// The target VM security type.
  final String? targetVmSecurityType;
  /// A value indicating whether trusted platform module to be enabled.
  final String? targetVmTpm;

  /// Creates a new [SecurityProfileProperties].
  /// [targetVmConfidentialEncryption] A value indicating whether confidential compute encryption to be enabled.
  /// [targetVmMonitoring] A value indicating whether integrity monitoring to be enabled.
  /// [targetVmSecureBoot] A value indicating whether secure boot to be enabled.
  /// [targetVmSecurityType] The target VM security type.
  /// [targetVmTpm] A value indicating whether trusted platform module to be enabled.
  SecurityProfileProperties({
    this.targetVmConfidentialEncryption,
    this.targetVmMonitoring,
    this.targetVmSecureBoot,
    this.targetVmSecurityType,
    this.targetVmTpm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetVmConfidentialEncryption': ?targetVmConfidentialEncryption,
      'targetVmMonitoring': ?targetVmMonitoring,
      'targetVmSecureBoot': ?targetVmSecureBoot,
      'targetVmSecurityType': ?targetVmSecurityType,
      'targetVmTpm': ?targetVmTpm,
    };
  }

  factory SecurityProfileProperties.fromMap(Map<String, dynamic> map) {
    return SecurityProfileProperties(
      targetVmConfidentialEncryption: map['targetVmConfidentialEncryption'] == null ? null : map['targetVmConfidentialEncryption'] as String,
      targetVmMonitoring: map['targetVmMonitoring'] == null ? null : map['targetVmMonitoring'] as String,
      targetVmSecureBoot: map['targetVmSecureBoot'] == null ? null : map['targetVmSecureBoot'] as String,
      targetVmSecurityType: map['targetVmSecurityType'] == null ? null : map['targetVmSecurityType'] as String,
      targetVmTpm: map['targetVmTpm'] == null ? null : map['targetVmTpm'] as String,
    );
  }
}

