// ignore_for_file: unused_element, unnecessary_cast

/// Configuration options for Adaptive Protection auto-deploy feature.
class SecurityPolicyAdaptiveProtectionConfigAutoDeployConfig {
  final double? confidenceThreshold;
  final int? expirationSec;
  final double? impactedBaselineThreshold;
  final double? loadThreshold;

  /// Creates a new [SecurityPolicyAdaptiveProtectionConfigAutoDeployConfig].
  /// [confidenceThreshold] Optional.
  /// [expirationSec] Optional.
  /// [impactedBaselineThreshold] Optional.
  /// [loadThreshold] Optional.
  SecurityPolicyAdaptiveProtectionConfigAutoDeployConfig({
    this.confidenceThreshold,
    this.expirationSec,
    this.impactedBaselineThreshold,
    this.loadThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidenceThreshold': ?confidenceThreshold,
      'expirationSec': ?expirationSec,
      'impactedBaselineThreshold': ?impactedBaselineThreshold,
      'loadThreshold': ?loadThreshold,
    };
  }

  factory SecurityPolicyAdaptiveProtectionConfigAutoDeployConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityPolicyAdaptiveProtectionConfigAutoDeployConfig(
      confidenceThreshold: map['confidenceThreshold'] == null
          ? null
          : map['confidenceThreshold'] as double,
      expirationSec: map['expirationSec'] == null
          ? null
          : map['expirationSec'] as int,
      impactedBaselineThreshold: map['impactedBaselineThreshold'] == null
          ? null
          : map['impactedBaselineThreshold'] as double,
      loadThreshold: map['loadThreshold'] == null
          ? null
          : map['loadThreshold'] as double,
    );
  }
}
