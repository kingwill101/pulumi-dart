// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigComputeBeta {
  final double? autoDeployConfidenceThreshold;
  final int? autoDeployExpirationSec;
  final double? autoDeployImpactedBaselineThreshold;
  final double? autoDeployLoadThreshold;

  /// The name must be 1-63 characters long, and comply with RFC1035. The name must be unique within the security policy.
  final String? name;

  /// Creates a new [SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigComputeBeta].
  /// [autoDeployConfidenceThreshold] Optional.
  /// [autoDeployExpirationSec] Optional.
  /// [autoDeployImpactedBaselineThreshold] Optional.
  /// [autoDeployLoadThreshold] Optional.
  /// [name] The name must be 1-63 characters long, and comply with RFC1035. The name must be unique within the security policy.
  SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigComputeBeta({
    this.autoDeployConfidenceThreshold,
    this.autoDeployExpirationSec,
    this.autoDeployImpactedBaselineThreshold,
    this.autoDeployLoadThreshold,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoDeployConfidenceThresholdValue = autoDeployConfidenceThreshold;
    if (autoDeployConfidenceThresholdValue != null) {
      map['autoDeployConfidenceThreshold'] = autoDeployConfidenceThresholdValue;
    }
    final autoDeployExpirationSecValue = autoDeployExpirationSec;
    if (autoDeployExpirationSecValue != null) {
      map['autoDeployExpirationSec'] = autoDeployExpirationSecValue;
    }
    final autoDeployImpactedBaselineThresholdValue =
        autoDeployImpactedBaselineThreshold;
    if (autoDeployImpactedBaselineThresholdValue != null) {
      map['autoDeployImpactedBaselineThreshold'] =
          autoDeployImpactedBaselineThresholdValue;
    }
    final autoDeployLoadThresholdValue = autoDeployLoadThreshold;
    if (autoDeployLoadThresholdValue != null) {
      map['autoDeployLoadThreshold'] = autoDeployLoadThresholdValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigComputeBeta(
      autoDeployConfidenceThreshold:
          map['autoDeployConfidenceThreshold'] == null
              ? null
              : map['autoDeployConfidenceThreshold'] as double,
      autoDeployExpirationSec: map['autoDeployExpirationSec'] == null
          ? null
          : map['autoDeployExpirationSec'] as int,
      autoDeployImpactedBaselineThreshold:
          map['autoDeployImpactedBaselineThreshold'] == null
              ? null
              : map['autoDeployImpactedBaselineThreshold'] as double,
      autoDeployLoadThreshold: map['autoDeployLoadThreshold'] == null
          ? null
          : map['autoDeployLoadThreshold'] as double,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
