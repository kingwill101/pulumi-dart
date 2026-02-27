// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_feature_spec_clusterupgrade_gke_upgrade_override/get_feature_spec_clusterupgrade_gke_upgrade_override.dart';
import '../get_feature_spec_clusterupgrade_post_condition/get_feature_spec_clusterupgrade_post_condition.dart';

class GetFeatureSpecClusterupgrade {
  /// Configuration overrides for individual upgrades.
  final List<GetFeatureSpecClusterupgradeGkeUpgradeOverride>
      gkeUpgradeOverrides;

  /// Post conditions to override for the specified upgrade.
  final List<GetFeatureSpecClusterupgradePostCondition> postConditions;

  /// Specified if other fleet should be considered as a source of upgrades. Currently, at most one upstream fleet is allowed. The fleet name should be either fleet project number or id.
  final List<String> upstreamFleets;

  GetFeatureSpecClusterupgrade({
    required this.gkeUpgradeOverrides,
    required this.postConditions,
    required this.upstreamFleets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gkeUpgradeOverrides'] = pulumi.Input.encodeList<
        GetFeatureSpecClusterupgradeGkeUpgradeOverride,
        Map<String, dynamic>>(gkeUpgradeOverrides, (value) => value.toMap());
    map['postConditions'] = pulumi.Input.encodeList<
        GetFeatureSpecClusterupgradePostCondition,
        Map<String, dynamic>>(postConditions, (value) => value.toMap());
    map['upstreamFleets'] = upstreamFleets;
    return map;
  }

  factory GetFeatureSpecClusterupgrade.fromMap(Map<String, dynamic> map) {
    return GetFeatureSpecClusterupgrade(
      gkeUpgradeOverrides: pulumi.Input.decodeList<
              GetFeatureSpecClusterupgradeGkeUpgradeOverride>(
          map['gkeUpgradeOverrides'],
          (value) => GetFeatureSpecClusterupgradeGkeUpgradeOverride.fromMap(
              (value as Map).cast<String, dynamic>())),
      postConditions:
          pulumi.Input.decodeList<GetFeatureSpecClusterupgradePostCondition>(
              map['postConditions'],
              (value) => GetFeatureSpecClusterupgradePostCondition.fromMap(
                  (value as Map).cast<String, dynamic>())),
      upstreamFleets: (map['upstreamFleets'] as List).cast<String>(),
    );
  }
}
