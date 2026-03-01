// ignore_for_file: unused_element, unnecessary_cast

/// Configuration options for Adaptive Protection auto-deploy feature.
class SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigResponseComputeBeta {
  final double confidenceThreshold;
  final int expirationSec;
  final double impactedBaselineThreshold;
  final double loadThreshold;

  /// Creates a new [SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigResponseComputeBeta].
  /// [confidenceThreshold] Required.
  /// [expirationSec] Required.
  /// [impactedBaselineThreshold] Required.
  /// [loadThreshold] Required.
  SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigResponseComputeBeta({
    required this.confidenceThreshold,
    required this.expirationSec,
    required this.impactedBaselineThreshold,
    required this.loadThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidenceThreshold': confidenceThreshold,
      'expirationSec': expirationSec,
      'impactedBaselineThreshold': impactedBaselineThreshold,
      'loadThreshold': loadThreshold,
    };
  }

  factory SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigResponseComputeBeta(
      confidenceThreshold: map['confidenceThreshold'] as double,
      expirationSec: map['expirationSec'] as int,
      impactedBaselineThreshold: map['impactedBaselineThreshold'] as double,
      loadThreshold: map['loadThreshold'] as double,
    );
  }
}
