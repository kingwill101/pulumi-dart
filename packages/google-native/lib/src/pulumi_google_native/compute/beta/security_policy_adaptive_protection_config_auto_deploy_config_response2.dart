// ignore_for_file: unused_element, unnecessary_cast

/// Configuration options for Adaptive Protection auto-deploy feature.
class SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigResponse2 {
  final double confidenceThreshold;
  final int expirationSec;
  final double impactedBaselineThreshold;
  final double loadThreshold;

  SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigResponse2({
    required this.confidenceThreshold,
    required this.expirationSec,
    required this.impactedBaselineThreshold,
    required this.loadThreshold,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['confidenceThreshold'] = confidenceThreshold;
    map['expirationSec'] = expirationSec;
    map['impactedBaselineThreshold'] = impactedBaselineThreshold;
    map['loadThreshold'] = loadThreshold;
    return map;
  }

  factory SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigResponse2.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigResponse2(
      confidenceThreshold: map['confidenceThreshold'] as double,
      expirationSec: map['expirationSec'] as int,
      impactedBaselineThreshold: map['impactedBaselineThreshold'] as double,
      loadThreshold: map['loadThreshold'] as double,
    );
  }
}
