// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_security_policy_adaptive_protection_config_layer7_ddos_defense_config_threshold_config_traffic_granularity_config/get_security_policy_adaptive_protection_config_layer7_ddos_defense_config_threshold_config_traffic_granularity_config.dart';

class GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig {
  final double autoDeployConfidenceThreshold;
  final int autoDeployExpirationSec;
  final double autoDeployImpactedBaselineThreshold;
  final double autoDeployLoadThreshold;
  final double detectionAbsoluteQps;
  final double detectionLoadThreshold;
  final double detectionRelativeToBaselineQps;

  /// The name of the security policy. Provide either this or a `self_link`.
  final String name;
  final List<
          GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigTrafficGranularityConfig>
      trafficGranularityConfigs;

  GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig({
    required this.autoDeployConfidenceThreshold,
    required this.autoDeployExpirationSec,
    required this.autoDeployImpactedBaselineThreshold,
    required this.autoDeployLoadThreshold,
    required this.detectionAbsoluteQps,
    required this.detectionLoadThreshold,
    required this.detectionRelativeToBaselineQps,
    required this.name,
    required this.trafficGranularityConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoDeployConfidenceThreshold'] = autoDeployConfidenceThreshold;
    map['autoDeployExpirationSec'] = autoDeployExpirationSec;
    map['autoDeployImpactedBaselineThreshold'] =
        autoDeployImpactedBaselineThreshold;
    map['autoDeployLoadThreshold'] = autoDeployLoadThreshold;
    map['detectionAbsoluteQps'] = detectionAbsoluteQps;
    map['detectionLoadThreshold'] = detectionLoadThreshold;
    map['detectionRelativeToBaselineQps'] = detectionRelativeToBaselineQps;
    map['name'] = name;
    map['trafficGranularityConfigs'] = pulumi.Input.encodeList<
        GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigTrafficGranularityConfig,
        Map<String,
            dynamic>>(trafficGranularityConfigs, (value) => value.toMap());
    return map;
  }

  factory GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig.fromMap(
      Map<String, dynamic> map) {
    return GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig(
      autoDeployConfidenceThreshold:
          map['autoDeployConfidenceThreshold'] as double,
      autoDeployExpirationSec: map['autoDeployExpirationSec'] as int,
      autoDeployImpactedBaselineThreshold:
          map['autoDeployImpactedBaselineThreshold'] as double,
      autoDeployLoadThreshold: map['autoDeployLoadThreshold'] as double,
      detectionAbsoluteQps: map['detectionAbsoluteQps'] as double,
      detectionLoadThreshold: map['detectionLoadThreshold'] as double,
      detectionRelativeToBaselineQps:
          map['detectionRelativeToBaselineQps'] as double,
      name: map['name'] as String,
      trafficGranularityConfigs: pulumi.Input.decodeList<
              GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigTrafficGranularityConfig>(
          map['trafficGranularityConfigs'],
          (value) =>
              GetSecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfigTrafficGranularityConfig
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
