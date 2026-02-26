// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../feature_spec_clusterupgrade_gke_upgrade_override/feature_spec_clusterupgrade_gke_upgrade_override.dart';
import '../feature_spec_clusterupgrade_post_conditions/feature_spec_clusterupgrade_post_conditions.dart';

class FeatureSpecClusterupgrade {
  /// Configuration overrides for individual upgrades.
  /// Structure is documented below.
  final List<FeatureSpecClusterupgradeGkeUpgradeOverride>? gkeUpgradeOverrides;

  /// Post conditions to override for the specified upgrade.
  /// Structure is documented below.
  final FeatureSpecClusterupgradePostConditions? postConditions;

  /// Specified if other fleet should be considered as a source of upgrades. Currently, at most one upstream fleet is allowed. The fleet name should be either fleet project number or id.
  final List<String> upstreamFleets;

  FeatureSpecClusterupgrade({
    this.gkeUpgradeOverrides,
    this.postConditions,
    required this.upstreamFleets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gkeUpgradeOverridesValue = gkeUpgradeOverrides;
    if (gkeUpgradeOverridesValue != null) {
      map['gkeUpgradeOverrides'] = Input.encodeList<
              FeatureSpecClusterupgradeGkeUpgradeOverride,
              Map<String, dynamic>>(
          gkeUpgradeOverridesValue, (value) => value.toMap());
    }
    final postConditionsValue = postConditions;
    if (postConditionsValue != null) {
      map['postConditions'] = postConditionsValue.toMap();
    }
    map['upstreamFleets'] = upstreamFleets;
    return map;
  }

  factory FeatureSpecClusterupgrade.fromMap(Map<String, dynamic> map) {
    return FeatureSpecClusterupgrade(
      gkeUpgradeOverrides: map['gkeUpgradeOverrides'] == null
          ? null
          : Input.decodeList<FeatureSpecClusterupgradeGkeUpgradeOverride>(
              map['gkeUpgradeOverrides'],
              (value) => FeatureSpecClusterupgradeGkeUpgradeOverride.fromMap(
                  (value as Map).cast<String, dynamic>())),
      postConditions: map['postConditions'] == null
          ? null
          : FeatureSpecClusterupgradePostConditions.fromMap(
              (map['postConditions'] as Map).cast<String, dynamic>()),
      upstreamFleets: (map['upstreamFleets'] as List).cast<String>(),
    );
  }
}
