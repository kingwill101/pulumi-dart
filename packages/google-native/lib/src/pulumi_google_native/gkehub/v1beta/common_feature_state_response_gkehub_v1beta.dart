// ignore_for_file: unused_element, unnecessary_cast

import 'app_dev_experience_feature_state_response_gkehub_v1beta.dart';
import 'cluster_upgrade_fleet_state_response_gkehub_v1beta.dart';
import 'feature_state_response_gkehub_v1beta.dart';
import 'fleet_observability_feature_state_response_gkehub_v1beta.dart';

/// CommonFeatureState contains Hub-wide Feature status information.
class CommonFeatureStateResponseGkehubV1beta {
  /// Appdevexperience specific state.
  final AppDevExperienceFeatureStateResponseGkehubV1beta appdevexperience;

  /// ClusterUpgrade fleet-level state.
  final ClusterUpgradeFleetStateResponseGkehubV1beta clusterupgrade;

  /// FleetObservability feature state.
  final FleetObservabilityFeatureStateResponseGkehubV1beta fleetobservability;

  /// The "running state" of the Feature in this Hub.
  final FeatureStateResponseGkehubV1beta state;

  CommonFeatureStateResponseGkehubV1beta({
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

  factory CommonFeatureStateResponseGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return CommonFeatureStateResponseGkehubV1beta(
      appdevexperience:
          AppDevExperienceFeatureStateResponseGkehubV1beta.fromMap(
              (map['appdevexperience'] as Map).cast<String, dynamic>()),
      clusterupgrade: ClusterUpgradeFleetStateResponseGkehubV1beta.fromMap(
          (map['clusterupgrade'] as Map).cast<String, dynamic>()),
      fleetobservability:
          FleetObservabilityFeatureStateResponseGkehubV1beta.fromMap(
              (map['fleetobservability'] as Map).cast<String, dynamic>()),
      state: FeatureStateResponseGkehubV1beta.fromMap(
          (map['state'] as Map).cast<String, dynamic>()),
    );
  }
}
