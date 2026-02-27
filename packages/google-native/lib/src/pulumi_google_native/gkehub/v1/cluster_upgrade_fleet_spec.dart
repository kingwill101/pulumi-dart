// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'cluster_upgrade_gkeupgrade_override.dart';
import 'cluster_upgrade_post_conditions.dart';

/// **ClusterUpgrade**: The configuration for the fleet-level ClusterUpgrade feature.
class ClusterUpgradeFleetSpec {
  /// Allow users to override some properties of each GKE upgrade.
  final List<ClusterUpgradeGKEUpgradeOverride>? gkeUpgradeOverrides;

  /// Post conditions to evaluate to mark an upgrade COMPLETE. Required.
  final ClusterUpgradePostConditions postConditions;

  /// This fleet consumes upgrades that have COMPLETE status code in the upstream fleets. See UpgradeStatus.Code for code definitions. The fleet name should be either fleet project number or id. This is defined as repeated for future proof reasons. Initial implementation will enforce at most one upstream fleet.
  final List<String>? upstreamFleets;

  ClusterUpgradeFleetSpec({
    this.gkeUpgradeOverrides,
    required this.postConditions,
    this.upstreamFleets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gkeUpgradeOverridesValue = gkeUpgradeOverrides;
    if (gkeUpgradeOverridesValue != null) {
      map['gkeUpgradeOverrides'] = Input.encodeList<
              ClusterUpgradeGKEUpgradeOverride, Map<String, dynamic>>(
          gkeUpgradeOverridesValue, (value) => value.toMap());
    }
    map['postConditions'] = postConditions.toMap();
    final upstreamFleetsValue = upstreamFleets;
    if (upstreamFleetsValue != null) {
      map['upstreamFleets'] = upstreamFleetsValue;
    }
    return map;
  }

  factory ClusterUpgradeFleetSpec.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradeFleetSpec(
      gkeUpgradeOverrides: map['gkeUpgradeOverrides'] == null
          ? null
          : Input.decodeList<ClusterUpgradeGKEUpgradeOverride>(
              map['gkeUpgradeOverrides'],
              (value) => ClusterUpgradeGKEUpgradeOverride.fromMap(
                  (value as Map).cast<String, dynamic>())),
      postConditions: ClusterUpgradePostConditions.fromMap(
          (map['postConditions'] as Map).cast<String, dynamic>()),
      upstreamFleets: map['upstreamFleets'] == null
          ? null
          : (map['upstreamFleets'] as List).cast<String>(),
    );
  }
}
