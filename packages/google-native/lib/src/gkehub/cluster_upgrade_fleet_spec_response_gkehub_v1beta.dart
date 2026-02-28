// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_upgrade_gkeupgrade_override_response_gkehub_v1beta.dart';
import 'cluster_upgrade_post_conditions_response_gkehub_v1beta.dart';

/// **ClusterUpgrade**: The configuration for the fleet-level ClusterUpgrade feature.
class ClusterUpgradeFleetSpecResponseGkehubV1beta {
  /// Allow users to override some properties of each GKE upgrade.
  final List<ClusterUpgradeGKEUpgradeOverrideResponseGkehubV1beta>
      gkeUpgradeOverrides;

  /// Post conditions to evaluate to mark an upgrade COMPLETE. Required.
  final ClusterUpgradePostConditionsResponseGkehubV1beta postConditions;

  /// This fleet consumes upgrades that have COMPLETE status code in the upstream fleets. See UpgradeStatus.Code for code definitions. The fleet name should be either fleet project number or id. This is defined as repeated for future proof reasons. Initial implementation will enforce at most one upstream fleet.
  final List<String> upstreamFleets;

  /// Creates a new [ClusterUpgradeFleetSpecResponseGkehubV1beta].
  /// [gkeUpgradeOverrides] Allow users to override some properties of each GKE upgrade.
  /// [postConditions] Post conditions to evaluate to mark an upgrade COMPLETE. Required.
  /// [upstreamFleets] This fleet consumes upgrades that have COMPLETE status code in the upstream fleets. See UpgradeStatus.Code for code definitions. The fleet name should be either fleet project number or id. This is defined as repeated for future proof reasons. Initial implementation will enforce at most one upstream fleet.
  ClusterUpgradeFleetSpecResponseGkehubV1beta({
    required this.gkeUpgradeOverrides,
    required this.postConditions,
    required this.upstreamFleets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gkeUpgradeOverrides'] = pulumi.Input.encodeList<
        ClusterUpgradeGKEUpgradeOverrideResponseGkehubV1beta,
        Map<String, dynamic>>(gkeUpgradeOverrides, (value) => value.toMap());
    map['postConditions'] = postConditions.toMap();
    map['upstreamFleets'] = upstreamFleets;
    return map;
  }

  factory ClusterUpgradeFleetSpecResponseGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return ClusterUpgradeFleetSpecResponseGkehubV1beta(
      gkeUpgradeOverrides: pulumi.Input.decodeList<
              ClusterUpgradeGKEUpgradeOverrideResponseGkehubV1beta>(
          map['gkeUpgradeOverrides'],
          (value) =>
              ClusterUpgradeGKEUpgradeOverrideResponseGkehubV1beta.fromMap(
                  (value as Map).cast<String, dynamic>())),
      postConditions: ClusterUpgradePostConditionsResponseGkehubV1beta.fromMap(
          (map['postConditions'] as Map).cast<String, dynamic>()),
      upstreamFleets: (map['upstreamFleets'] as List).cast<String>(),
    );
  }
}
