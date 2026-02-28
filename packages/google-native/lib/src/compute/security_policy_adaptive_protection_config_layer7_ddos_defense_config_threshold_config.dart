// ignore_for_file: unused_element, unnecessary_cast


class SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig {
  final double? autoDeployConfidenceThreshold;
  final int? autoDeployExpirationSec;
  final double? autoDeployImpactedBaselineThreshold;
  final double? autoDeployLoadThreshold;
  /// The name must be 1-63 characters long, and comply with RFC1035. The name must be unique within the security policy.
  final String? name;

  /// Creates a new [SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig].
  /// [autoDeployConfidenceThreshold] Optional.
  /// [autoDeployExpirationSec] Optional.
  /// [autoDeployImpactedBaselineThreshold] Optional.
  /// [autoDeployLoadThreshold] Optional.
  /// [name] The name must be 1-63 characters long, and comply with RFC1035. The name must be unique within the security policy.
  SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig({
    this.autoDeployConfidenceThreshold,
    this.autoDeployExpirationSec,
    this.autoDeployImpactedBaselineThreshold,
    this.autoDeployLoadThreshold,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDeployConfidenceThreshold': ?autoDeployConfidenceThreshold,
      'autoDeployExpirationSec': ?autoDeployExpirationSec,
      'autoDeployImpactedBaselineThreshold': ?autoDeployImpactedBaselineThreshold,
      'autoDeployLoadThreshold': ?autoDeployLoadThreshold,
      'name': ?name,
    };
  }

  factory SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig(
      autoDeployConfidenceThreshold: map['autoDeployConfidenceThreshold'] == null ? null : map['autoDeployConfidenceThreshold'] as double,
      autoDeployExpirationSec: map['autoDeployExpirationSec'] == null ? null : map['autoDeployExpirationSec'] as int,
      autoDeployImpactedBaselineThreshold: map['autoDeployImpactedBaselineThreshold'] == null ? null : map['autoDeployImpactedBaselineThreshold'] as double,
      autoDeployLoadThreshold: map['autoDeployLoadThreshold'] == null ? null : map['autoDeployLoadThreshold'] as double,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

