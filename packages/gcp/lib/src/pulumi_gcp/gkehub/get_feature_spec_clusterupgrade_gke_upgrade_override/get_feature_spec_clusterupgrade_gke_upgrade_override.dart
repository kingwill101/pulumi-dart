// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_feature_spec_clusterupgrade_gke_upgrade_override_post_condition/get_feature_spec_clusterupgrade_gke_upgrade_override_post_condition.dart';
import '../get_feature_spec_clusterupgrade_gke_upgrade_override_upgrade/get_feature_spec_clusterupgrade_gke_upgrade_override_upgrade.dart';

class GetFeatureSpecClusterupgradeGkeUpgradeOverride {
  /// Post conditions to override for the specified upgrade.
  final List<GetFeatureSpecClusterupgradeGkeUpgradeOverridePostCondition>
      postConditions;

  /// Which upgrade to override.
  final List<GetFeatureSpecClusterupgradeGkeUpgradeOverrideUpgrade> upgrades;

  GetFeatureSpecClusterupgradeGkeUpgradeOverride({
    required this.postConditions,
    required this.upgrades,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['postConditions'] = Input.encodeList<
        GetFeatureSpecClusterupgradeGkeUpgradeOverridePostCondition,
        Map<String, dynamic>>(postConditions, (value) => value.toMap());
    map['upgrades'] = Input.encodeList<
        GetFeatureSpecClusterupgradeGkeUpgradeOverrideUpgrade,
        Map<String, dynamic>>(upgrades, (value) => value.toMap());
    return map;
  }

  factory GetFeatureSpecClusterupgradeGkeUpgradeOverride.fromMap(
      Map<String, dynamic> map) {
    return GetFeatureSpecClusterupgradeGkeUpgradeOverride(
      postConditions: Input.decodeList<
              GetFeatureSpecClusterupgradeGkeUpgradeOverridePostCondition>(
          map['postConditions'],
          (value) => GetFeatureSpecClusterupgradeGkeUpgradeOverridePostCondition
              .fromMap((value as Map).cast<String, dynamic>())),
      upgrades: Input.decodeList<
              GetFeatureSpecClusterupgradeGkeUpgradeOverrideUpgrade>(
          map['upgrades'],
          (value) =>
              GetFeatureSpecClusterupgradeGkeUpgradeOverrideUpgrade.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
