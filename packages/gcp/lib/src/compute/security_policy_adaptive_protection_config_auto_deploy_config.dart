// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyAdaptiveProtectionConfigAutoDeployConfig {
  /// Rules are only automatically deployed for alerts on potential attacks with confidence scores greater than this threshold.
  final double? confidenceThreshold;

  /// Google Cloud Armor stops applying the action in the automatically deployed rule to an identified attacker after this duration. The rule continues to operate against new requests.
  final int? expirationSec;

  /// Rules are only automatically deployed when the estimated impact to baseline traffic from the suggested mitigation is below this threshold.
  final double? impactedBaselineThreshold;

  /// Identifies new attackers only when the load to the backend service that is under attack exceeds this threshold.
  final double? loadThreshold;

  /// Creates a new [SecurityPolicyAdaptiveProtectionConfigAutoDeployConfig].
  /// [confidenceThreshold] Rules are only automatically deployed for alerts on potential attacks with confidence scores greater than this threshold.
  /// [expirationSec] Google Cloud Armor stops applying the action in the automatically deployed rule to an identified attacker after this duration. The rule continues to operate against new requests.
  /// [impactedBaselineThreshold] Rules are only automatically deployed when the estimated impact to baseline traffic from the suggested mitigation is below this threshold.
  /// [loadThreshold] Identifies new attackers only when the load to the backend service that is under attack exceeds this threshold.
  SecurityPolicyAdaptiveProtectionConfigAutoDeployConfig({
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

  factory SecurityPolicyAdaptiveProtectionConfigAutoDeployConfig.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyAdaptiveProtectionConfigAutoDeployConfig(
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
