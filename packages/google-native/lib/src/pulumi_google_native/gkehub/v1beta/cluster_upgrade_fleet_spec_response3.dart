// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'cluster_upgrade_gkeupgrade_override_response3.dart';
import 'cluster_upgrade_post_conditions_response3.dart';

/// **ClusterUpgrade**: The configuration for the fleet-level ClusterUpgrade feature.
class ClusterUpgradeFleetSpecResponse3 {
  /// Allow users to override some properties of each GKE upgrade.
  final List<ClusterUpgradeGKEUpgradeOverrideResponse3> gkeUpgradeOverrides;

  /// Post conditions to evaluate to mark an upgrade COMPLETE. Required.
  final ClusterUpgradePostConditionsResponse3 postConditions;

  /// This fleet consumes upgrades that have COMPLETE status code in the upstream fleets. See UpgradeStatus.Code for code definitions. The fleet name should be either fleet project number or id. This is defined as repeated for future proof reasons. Initial implementation will enforce at most one upstream fleet.
  final List<String> upstreamFleets;

  ClusterUpgradeFleetSpecResponse3({
    required this.gkeUpgradeOverrides,
    required this.postConditions,
    required this.upstreamFleets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gkeUpgradeOverrides'] = Input.encodeList<
        ClusterUpgradeGKEUpgradeOverrideResponse3,
        Map<String, dynamic>>(gkeUpgradeOverrides, (value) => value.toMap());
    map['postConditions'] = postConditions.toMap();
    map['upstreamFleets'] = upstreamFleets;
    return map;
  }

  factory ClusterUpgradeFleetSpecResponse3.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradeFleetSpecResponse3(
      gkeUpgradeOverrides:
          Input.decodeList<ClusterUpgradeGKEUpgradeOverrideResponse3>(
              map['gkeUpgradeOverrides'],
              (value) => ClusterUpgradeGKEUpgradeOverrideResponse3.fromMap(
                  (value as Map).cast<String, dynamic>())),
      postConditions: ClusterUpgradePostConditionsResponse3.fromMap(
          (map['postConditions'] as Map).cast<String, dynamic>()),
      upstreamFleets: (map['upstreamFleets'] as List).cast<String>(),
    );
  }
}
