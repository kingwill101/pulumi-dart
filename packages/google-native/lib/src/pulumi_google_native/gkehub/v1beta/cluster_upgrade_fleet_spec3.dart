// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'cluster_upgrade_gkeupgrade_override3.dart';
import 'cluster_upgrade_post_conditions3.dart';

/// **ClusterUpgrade**: The configuration for the fleet-level ClusterUpgrade feature.
class ClusterUpgradeFleetSpec3 {
  /// Allow users to override some properties of each GKE upgrade.
  final List<ClusterUpgradeGKEUpgradeOverride3>? gkeUpgradeOverrides;

  /// Post conditions to evaluate to mark an upgrade COMPLETE. Required.
  final ClusterUpgradePostConditions3 postConditions;

  /// This fleet consumes upgrades that have COMPLETE status code in the upstream fleets. See UpgradeStatus.Code for code definitions. The fleet name should be either fleet project number or id. This is defined as repeated for future proof reasons. Initial implementation will enforce at most one upstream fleet.
  final List<String>? upstreamFleets;

  ClusterUpgradeFleetSpec3({
    this.gkeUpgradeOverrides,
    required this.postConditions,
    this.upstreamFleets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gkeUpgradeOverridesValue = gkeUpgradeOverrides;
    if (gkeUpgradeOverridesValue != null) {
      map['gkeUpgradeOverrides'] = Input.encodeList<
              ClusterUpgradeGKEUpgradeOverride3, Map<String, dynamic>>(
          gkeUpgradeOverridesValue, (value) => value.toMap());
    }
    map['postConditions'] = postConditions.toMap();
    final upstreamFleetsValue = upstreamFleets;
    if (upstreamFleetsValue != null) {
      map['upstreamFleets'] = upstreamFleetsValue;
    }
    return map;
  }

  factory ClusterUpgradeFleetSpec3.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradeFleetSpec3(
      gkeUpgradeOverrides: map['gkeUpgradeOverrides'] == null
          ? null
          : Input.decodeList<ClusterUpgradeGKEUpgradeOverride3>(
              map['gkeUpgradeOverrides'],
              (value) => ClusterUpgradeGKEUpgradeOverride3.fromMap(
                  (value as Map).cast<String, dynamic>())),
      postConditions: ClusterUpgradePostConditions3.fromMap(
          (map['postConditions'] as Map).cast<String, dynamic>()),
      upstreamFleets: map['upstreamFleets'] == null
          ? null
          : (map['upstreamFleets'] as List).cast<String>(),
    );
  }
}
