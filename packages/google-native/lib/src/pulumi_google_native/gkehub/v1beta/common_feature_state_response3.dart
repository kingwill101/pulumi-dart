// ignore_for_file: unused_element, unnecessary_cast

import 'app_dev_experience_feature_state_response3.dart';
import 'cluster_upgrade_fleet_state_response3.dart';
import 'feature_state_response3.dart';
import 'fleet_observability_feature_state_response3.dart';

/// CommonFeatureState contains Hub-wide Feature status information.
class CommonFeatureStateResponse3 {
  /// Appdevexperience specific state.
  final AppDevExperienceFeatureStateResponse3 appdevexperience;

  /// ClusterUpgrade fleet-level state.
  final ClusterUpgradeFleetStateResponse3 clusterupgrade;

  /// FleetObservability feature state.
  final FleetObservabilityFeatureStateResponse3 fleetobservability;

  /// The "running state" of the Feature in this Hub.
  final FeatureStateResponse3 state;

  CommonFeatureStateResponse3({
    required this.appdevexperience,
    required this.clusterupgrade,
    required this.fleetobservability,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appdevexperience'] = appdevexperience.toMap();
    map['clusterupgrade'] = clusterupgrade.toMap();
    map['fleetobservability'] = fleetobservability.toMap();
    map['state'] = state.toMap();
    return map;
  }

  factory CommonFeatureStateResponse3.fromMap(Map<String, dynamic> map) {
    return CommonFeatureStateResponse3(
      appdevexperience: AppDevExperienceFeatureStateResponse3.fromMap(
          (map['appdevexperience'] as Map).cast<String, dynamic>()),
      clusterupgrade: ClusterUpgradeFleetStateResponse3.fromMap(
          (map['clusterupgrade'] as Map).cast<String, dynamic>()),
      fleetobservability: FleetObservabilityFeatureStateResponse3.fromMap(
          (map['fleetobservability'] as Map).cast<String, dynamic>()),
      state: FeatureStateResponse3.fromMap(
          (map['state'] as Map).cast<String, dynamic>()),
    );
  }
}
