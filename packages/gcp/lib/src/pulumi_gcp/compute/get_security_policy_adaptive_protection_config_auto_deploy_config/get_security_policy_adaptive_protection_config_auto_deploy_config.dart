// ignore_for_file: unused_element, unnecessary_cast

class GetSecurityPolicyAdaptiveProtectionConfigAutoDeployConfig {
  /// Rules are only automatically deployed for alerts on potential attacks with confidence scores greater than this threshold.
  final double confidenceThreshold;

  /// Google Cloud Armor stops applying the action in the automatically deployed rule to an identified attacker after this duration. The rule continues to operate against new requests.
  final int expirationSec;

  /// Rules are only automatically deployed when the estimated impact to baseline traffic from the suggested mitigation is below this threshold.
  final double impactedBaselineThreshold;

  /// Identifies new attackers only when the load to the backend service that is under attack exceeds this threshold.
  final double loadThreshold;

  GetSecurityPolicyAdaptiveProtectionConfigAutoDeployConfig({
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

  factory GetSecurityPolicyAdaptiveProtectionConfigAutoDeployConfig.fromMap(
      Map<String, dynamic> map) {
    return GetSecurityPolicyAdaptiveProtectionConfigAutoDeployConfig(
      confidenceThreshold: map['confidenceThreshold'] as double,
      expirationSec: map['expirationSec'] as int,
      impactedBaselineThreshold: map['impactedBaselineThreshold'] as double,
      loadThreshold: map['loadThreshold'] as double,
    );
  }
}
