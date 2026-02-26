// ignore_for_file: unused_element, unnecessary_cast

import '../feature_spec_clusterupgrade_gke_upgrade_override_post_conditions/feature_spec_clusterupgrade_gke_upgrade_override_post_conditions.dart';
import '../feature_spec_clusterupgrade_gke_upgrade_override_upgrade/feature_spec_clusterupgrade_gke_upgrade_override_upgrade.dart';

class FeatureSpecClusterupgradeGkeUpgradeOverride {
  /// Post conditions to override for the specified upgrade.
  /// Structure is documented below.
  final FeatureSpecClusterupgradeGkeUpgradeOverridePostConditions
      postConditions;

  /// Which upgrade to override.
  /// Structure is documented below.
  final FeatureSpecClusterupgradeGkeUpgradeOverrideUpgrade upgrade;

  FeatureSpecClusterupgradeGkeUpgradeOverride({
    required this.postConditions,
    required this.upgrade,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['postConditions'] = postConditions.toMap();
    map['upgrade'] = upgrade.toMap();
    return map;
  }

  factory FeatureSpecClusterupgradeGkeUpgradeOverride.fromMap(
      Map<String, dynamic> map) {
    return FeatureSpecClusterupgradeGkeUpgradeOverride(
      postConditions:
          FeatureSpecClusterupgradeGkeUpgradeOverridePostConditions.fromMap(
              (map['postConditions'] as Map).cast<String, dynamic>()),
      upgrade: FeatureSpecClusterupgradeGkeUpgradeOverrideUpgrade.fromMap(
          (map['upgrade'] as Map).cast<String, dynamic>()),
    );
  }
}
