// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_upgrade_gkeupgrade_override_gkehub_v1beta.dart';
import 'cluster_upgrade_post_conditions_gkehub_v1beta.dart';

/// **ClusterUpgrade**: The configuration for the fleet-level ClusterUpgrade feature.
class ClusterUpgradeFleetSpecGkehubV1beta {
  /// Allow users to override some properties of each GKE upgrade.
  final List<ClusterUpgradeGKEUpgradeOverrideGkehubV1beta>? gkeUpgradeOverrides;
  /// Post conditions to evaluate to mark an upgrade COMPLETE. Required.
  final ClusterUpgradePostConditionsGkehubV1beta postConditions;
  /// This fleet consumes upgrades that have COMPLETE status code in the upstream fleets. See UpgradeStatus.Code for code definitions. The fleet name should be either fleet project number or id. This is defined as repeated for future proof reasons. Initial implementation will enforce at most one upstream fleet.
  final List<String>? upstreamFleets;

  /// Creates a new [ClusterUpgradeFleetSpecGkehubV1beta].
  /// [gkeUpgradeOverrides] Allow users to override some properties of each GKE upgrade.
  /// [postConditions] Post conditions to evaluate to mark an upgrade COMPLETE. Required.
  /// [upstreamFleets] This fleet consumes upgrades that have COMPLETE status code in the upstream fleets. See UpgradeStatus.Code for code definitions. The fleet name should be either fleet project number or id. This is defined as repeated for future proof reasons. Initial implementation will enforce at most one upstream fleet.
  ClusterUpgradeFleetSpecGkehubV1beta({
    this.gkeUpgradeOverrides,
    required this.postConditions,
    this.upstreamFleets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gkeUpgradeOverrides': ?gkeUpgradeOverrides == null ? null : pulumi.Input.encodeList<ClusterUpgradeGKEUpgradeOverrideGkehubV1beta, Map<String, dynamic>>(gkeUpgradeOverrides!, (value) => value.toMap()),
      'postConditions': postConditions.toMap(),
      'upstreamFleets': ?upstreamFleets,
    };
  }

  factory ClusterUpgradeFleetSpecGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradeFleetSpecGkehubV1beta(
      gkeUpgradeOverrides: map['gkeUpgradeOverrides'] == null ? null : pulumi.Input.decodeList<ClusterUpgradeGKEUpgradeOverrideGkehubV1beta>(map['gkeUpgradeOverrides'], (value) => ClusterUpgradeGKEUpgradeOverrideGkehubV1beta.fromMap((value as Map).cast<String, dynamic>())),
      postConditions: ClusterUpgradePostConditionsGkehubV1beta.fromMap((map['postConditions'] as Map).cast<String, dynamic>()),
      upstreamFleets: map['upstreamFleets'] == null ? null : (map['upstreamFleets'] as List).cast<String>(),
    );
  }
}

