// ignore_for_file: unused_element, unnecessary_cast

import 'backend_service_fabric_cluster_properties.dart';

/// Properties specific to the Backend Type.
class BackendProperties {
  /// Backend Service Fabric Cluster Properties
  final BackendServiceFabricClusterProperties? serviceFabricCluster;

  /// Creates a new [BackendProperties].
  /// [serviceFabricCluster] Backend Service Fabric Cluster Properties
  BackendProperties({
    this.serviceFabricCluster,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceFabricCluster': ?serviceFabricCluster == null ? null : serviceFabricCluster!.toMap(),
    };
  }

  factory BackendProperties.fromMap(Map<String, dynamic> map) {
    return BackendProperties(
      serviceFabricCluster: map['serviceFabricCluster'] == null ? null : BackendServiceFabricClusterProperties.fromMap((map['serviceFabricCluster'] as Map).cast<String, dynamic>()),
    );
  }
}

