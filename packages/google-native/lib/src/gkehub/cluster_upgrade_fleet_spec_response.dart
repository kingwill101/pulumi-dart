// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_upgrade_gkeupgrade_override_response.dart';
import 'cluster_upgrade_post_conditions_response.dart';

/// **ClusterUpgrade**: The configuration for the fleet-level ClusterUpgrade feature.
class ClusterUpgradeFleetSpecResponse {
  /// Allow users to override some properties of each GKE upgrade.
  final List<ClusterUpgradeGKEUpgradeOverrideResponse> gkeUpgradeOverrides;
  /// Post conditions to evaluate to mark an upgrade COMPLETE. Required.
  final ClusterUpgradePostConditionsResponse postConditions;
  /// This fleet consumes upgrades that have COMPLETE status code in the upstream fleets. See UpgradeStatus.Code for code definitions. The fleet name should be either fleet project number or id. This is defined as repeated for future proof reasons. Initial implementation will enforce at most one upstream fleet.
  final List<String> upstreamFleets;

  /// Creates a new [ClusterUpgradeFleetSpecResponse].
  /// [gkeUpgradeOverrides] Allow users to override some properties of each GKE upgrade.
  /// [postConditions] Post conditions to evaluate to mark an upgrade COMPLETE. Required.
  /// [upstreamFleets] This fleet consumes upgrades that have COMPLETE status code in the upstream fleets. See UpgradeStatus.Code for code definitions. The fleet name should be either fleet project number or id. This is defined as repeated for future proof reasons. Initial implementation will enforce at most one upstream fleet.
  ClusterUpgradeFleetSpecResponse({
    required this.gkeUpgradeOverrides,
    required this.postConditions,
    required this.upstreamFleets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gkeUpgradeOverrides': pulumi.Input.encodeList<ClusterUpgradeGKEUpgradeOverrideResponse, Map<String, dynamic>>(gkeUpgradeOverrides, (value) => value.toMap()),
      'postConditions': postConditions.toMap(),
      'upstreamFleets': upstreamFleets,
    };
  }

  factory ClusterUpgradeFleetSpecResponse.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradeFleetSpecResponse(
      gkeUpgradeOverrides: pulumi.Input.decodeList<ClusterUpgradeGKEUpgradeOverrideResponse>(map['gkeUpgradeOverrides'], (value) => ClusterUpgradeGKEUpgradeOverrideResponse.fromMap((value as Map).cast<String, dynamic>())),
      postConditions: ClusterUpgradePostConditionsResponse.fromMap((map['postConditions'] as Map).cast<String, dynamic>()),
      upstreamFleets: (map['upstreamFleets'] as List).cast<String>(),
    );
  }
}

