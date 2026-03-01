// ignore_for_file: unused_element, unnecessary_cast

import 'backend_service_fabric_cluster_properties_response.dart';

/// Properties specific to the Backend Type.
class BackendPropertiesResponse {
  /// Backend Service Fabric Cluster Properties
  final BackendServiceFabricClusterPropertiesResponse? serviceFabricCluster;

  /// Creates a new [BackendPropertiesResponse].
  /// [serviceFabricCluster] Backend Service Fabric Cluster Properties
  BackendPropertiesResponse({
    this.serviceFabricCluster,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceFabricCluster': ?serviceFabricCluster == null ? null : serviceFabricCluster!.toMap(),
    };
  }

  factory BackendPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BackendPropertiesResponse(
      serviceFabricCluster: map['serviceFabricCluster'] == null ? null : BackendServiceFabricClusterPropertiesResponse.fromMap((map['serviceFabricCluster'] as Map).cast<String, dynamic>()),
    );
  }
}

