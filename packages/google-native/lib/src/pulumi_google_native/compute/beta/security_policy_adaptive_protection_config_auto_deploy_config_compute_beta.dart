// ignore_for_file: unused_element, unnecessary_cast

/// Configuration options for Adaptive Protection auto-deploy feature.
class SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigComputeBeta {
  final double? confidenceThreshold;
  final int? expirationSec;
  final double? impactedBaselineThreshold;
  final double? loadThreshold;

  SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigComputeBeta({
    this.confidenceThreshold,
    this.expirationSec,
    this.impactedBaselineThreshold,
    this.loadThreshold,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final confidenceThresholdValue = confidenceThreshold;
    if (confidenceThresholdValue != null) {
      map['confidenceThreshold'] = confidenceThresholdValue;
    }
    final expirationSecValue = expirationSec;
    if (expirationSecValue != null) {
      map['expirationSec'] = expirationSecValue;
    }
    final impactedBaselineThresholdValue = impactedBaselineThreshold;
    if (impactedBaselineThresholdValue != null) {
      map['impactedBaselineThreshold'] = impactedBaselineThresholdValue;
    }
    final loadThresholdValue = loadThreshold;
    if (loadThresholdValue != null) {
      map['loadThreshold'] = loadThresholdValue;
    }
    return map;
  }

  factory SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigComputeBeta(
      confidenceThreshold: map['confidenceThreshold'] == null
          ? null
          : map['confidenceThreshold'] as double,
      expirationSec:
          map['expirationSec'] == null ? null : map['expirationSec'] as int,
      impactedBaselineThreshold: map['impactedBaselineThreshold'] == null
          ? null
          : map['impactedBaselineThreshold'] as double,
      loadThreshold:
          map['loadThreshold'] == null ? null : map['loadThreshold'] as double,
    );
  }
}
