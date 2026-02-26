// ignore_for_file: unused_element, unnecessary_cast

import 'app_dev_experience_feature_state_response2.dart';
import 'cluster_upgrade_fleet_state_response2.dart';
import 'feature_state_response2.dart';
import 'fleet_observability_feature_state_response2.dart';
import 'service_mesh_feature_state_response.dart';

/// CommonFeatureState contains Hub-wide Feature status information.
class CommonFeatureStateResponse2 {
  /// Appdevexperience specific state.
  final AppDevExperienceFeatureStateResponse2 appdevexperience;

  /// ClusterUpgrade fleet-level state.
  final ClusterUpgradeFleetStateResponse2 clusterupgrade;

  /// FleetObservability feature state.
  final FleetObservabilityFeatureStateResponse2 fleetobservability;

  /// Namespace Actuation feature state.
  final Map<String, dynamic> namespaceactuation;

  /// Service Mesh-specific state.
  final ServiceMeshFeatureStateResponse servicemesh;

  /// The "running state" of the Feature in this Hub.
  final FeatureStateResponse2 state;

  CommonFeatureStateResponse2({
    required this.appdevexperience,
    required this.clusterupgrade,
    required this.fleetobservability,
    required this.namespaceactuation,
    required this.servicemesh,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appdevexperience'] = appdevexperience.toMap();
    map['clusterupgrade'] = clusterupgrade.toMap();
    map['fleetobservability'] = fleetobservability.toMap();
    map['namespaceactuation'] = namespaceactuation;
    map['servicemesh'] = servicemesh.toMap();
    map['state'] = state.toMap();
    return map;
  }

  factory CommonFeatureStateResponse2.fromMap(Map<String, dynamic> map) {
    return CommonFeatureStateResponse2(
      appdevexperience: AppDevExperienceFeatureStateResponse2.fromMap(
          (map['appdevexperience'] as Map).cast<String, dynamic>()),
      clusterupgrade: ClusterUpgradeFleetStateResponse2.fromMap(
          (map['clusterupgrade'] as Map).cast<String, dynamic>()),
      fleetobservability: FleetObservabilityFeatureStateResponse2.fromMap(
          (map['fleetobservability'] as Map).cast<String, dynamic>()),
      namespaceactuation:
          (map['namespaceactuation'] as Map).cast<String, dynamic>(),
      servicemesh: ServiceMeshFeatureStateResponse.fromMap(
          (map['servicemesh'] as Map).cast<String, dynamic>()),
      state: FeatureStateResponse2.fromMap(
          (map['state'] as Map).cast<String, dynamic>()),
    );
  }
}
