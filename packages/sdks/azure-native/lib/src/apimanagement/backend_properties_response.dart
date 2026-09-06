// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_service_fabric_cluster_properties_response.dart';

/// Properties specific to the Backend Type.
class BackendPropertiesResponse {
  /// Backend Service Fabric Cluster Properties
  final pulumi.Input<BackendServiceFabricClusterPropertiesResponse?>? serviceFabricCluster;

  /// Creates a new [BackendPropertiesResponse].
  /// [serviceFabricCluster] Backend Service Fabric Cluster Properties
  const BackendPropertiesResponse({
    this.serviceFabricCluster,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceFabricCluster': ?pulumi.Input.mapOptionalInputValue<BackendServiceFabricClusterPropertiesResponse, Map<String, dynamic>>(serviceFabricCluster, (value) => value.toMap()),
    };
  }

  factory BackendPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BackendPropertiesResponse(
      serviceFabricCluster: (() { final guardedValue = map['serviceFabricCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendServiceFabricClusterPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
