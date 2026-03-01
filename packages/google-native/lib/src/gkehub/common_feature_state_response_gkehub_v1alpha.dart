// ignore_for_file: unused_element, unnecessary_cast

import 'app_dev_experience_feature_state_response_gkehub_v1alpha.dart';
import 'cluster_upgrade_fleet_state_response_gkehub_v1alpha.dart';
import 'feature_state_response_gkehub_v1alpha.dart';
import 'fleet_observability_feature_state_response_gkehub_v1alpha.dart';
import 'service_mesh_feature_state_response.dart';

/// CommonFeatureState contains Hub-wide Feature status information.
class CommonFeatureStateResponseGkehubV1alpha {
  /// Appdevexperience specific state.
  final AppDevExperienceFeatureStateResponseGkehubV1alpha appdevexperience;

  /// ClusterUpgrade fleet-level state.
  final ClusterUpgradeFleetStateResponseGkehubV1alpha clusterupgrade;

  /// FleetObservability feature state.
  final FleetObservabilityFeatureStateResponseGkehubV1alpha fleetobservability;

  /// Namespace Actuation feature state.
  final Map<String, dynamic> namespaceactuation;

  /// Service Mesh-specific state.
  final ServiceMeshFeatureStateResponse servicemesh;

  /// The "running state" of the Feature in this Hub.
  final FeatureStateResponseGkehubV1alpha state;

  /// Creates a new [CommonFeatureStateResponseGkehubV1alpha].
  /// [appdevexperience] Appdevexperience specific state.
  /// [clusterupgrade] ClusterUpgrade fleet-level state.
  /// [fleetobservability] FleetObservability feature state.
  /// [namespaceactuation] Namespace Actuation feature state.
  /// [servicemesh] Service Mesh-specific state.
  /// [state] The "running state" of the Feature in this Hub.
  CommonFeatureStateResponseGkehubV1alpha({
    required this.appdevexperience,
    required this.clusterupgrade,
    required this.fleetobservability,
    required this.namespaceactuation,
    required this.servicemesh,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appdevexperience': appdevexperience.toMap(),
      'clusterupgrade': clusterupgrade.toMap(),
      'fleetobservability': fleetobservability.toMap(),
      'namespaceactuation': namespaceactuation,
      'servicemesh': servicemesh.toMap(),
      'state': state.toMap(),
    };
  }

  factory CommonFeatureStateResponseGkehubV1alpha.fromMap(
    Map<String, dynamic> map,
  ) {
    return CommonFeatureStateResponseGkehubV1alpha(
      appdevexperience:
          AppDevExperienceFeatureStateResponseGkehubV1alpha.fromMap(
            (map['appdevexperience'] as Map).cast<String, dynamic>(),
          ),
      clusterupgrade: ClusterUpgradeFleetStateResponseGkehubV1alpha.fromMap(
        (map['clusterupgrade'] as Map).cast<String, dynamic>(),
      ),
      fleetobservability:
          FleetObservabilityFeatureStateResponseGkehubV1alpha.fromMap(
            (map['fleetobservability'] as Map).cast<String, dynamic>(),
          ),
      namespaceactuation: (map['namespaceactuation'] as Map)
          .cast<String, dynamic>(),
      servicemesh: ServiceMeshFeatureStateResponse.fromMap(
        (map['servicemesh'] as Map).cast<String, dynamic>(),
      ),
      state: FeatureStateResponseGkehubV1alpha.fromMap(
        (map['state'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
