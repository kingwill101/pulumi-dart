// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigResponseComputeV1 {
  final double autoDeployConfidenceThreshold;
  final int autoDeployExpirationSec;
  final double autoDeployImpactedBaselineThreshold;
  final double autoDeployLoadThreshold;

  /// The name must be 1-63 characters long, and comply with RFC1035. The name must be unique within the security policy.
  final String name;

  /// Creates a new [SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigResponseComputeV1].
  /// [autoDeployConfidenceThreshold] Required.
  /// [autoDeployExpirationSec] Required.
  /// [autoDeployImpactedBaselineThreshold] Required.
  /// [autoDeployLoadThreshold] Required.
  /// [name] The name must be 1-63 characters long, and comply with RFC1035. The name must be unique within the security policy.
  SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigResponseComputeV1({
    required this.autoDeployConfidenceThreshold,
    required this.autoDeployExpirationSec,
    required this.autoDeployImpactedBaselineThreshold,
    required this.autoDeployLoadThreshold,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoDeployConfidenceThreshold'] = autoDeployConfidenceThreshold;
    map['autoDeployExpirationSec'] = autoDeployExpirationSec;
    map['autoDeployImpactedBaselineThreshold'] =
        autoDeployImpactedBaselineThreshold;
    map['autoDeployLoadThreshold'] = autoDeployLoadThreshold;
    map['name'] = name;
    return map;
  }

  factory SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigResponseComputeV1(
      autoDeployConfidenceThreshold:
          map['autoDeployConfidenceThreshold'] as double,
      autoDeployExpirationSec: map['autoDeployExpirationSec'] as int,
      autoDeployImpactedBaselineThreshold:
          map['autoDeployImpactedBaselineThreshold'] as double,
      autoDeployLoadThreshold: map['autoDeployLoadThreshold'] as double,
      name: map['name'] as String,
    );
  }
}
