// ignore_for_file: unused_element, unnecessary_cast

/// Configuration options for Adaptive Protection auto-deploy feature.
class SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigResponse {
  final double confidenceThreshold;
  final int expirationSec;
  final double impactedBaselineThreshold;
  final double loadThreshold;

  /// Creates a new [SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigResponse].
  /// [confidenceThreshold] Required.
  /// [expirationSec] Required.
  /// [impactedBaselineThreshold] Required.
  /// [loadThreshold] Required.
  SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigResponse({
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

  factory SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityPolicyAdaptiveProtectionConfigAutoDeployConfigResponse(
      confidenceThreshold: map['confidenceThreshold'] as double,
      expirationSec: map['expirationSec'] as int,
      impactedBaselineThreshold: map['impactedBaselineThreshold'] as double,
      loadThreshold: map['loadThreshold'] as double,
    );
  }
}
