// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_service_fabric_cluster_properties.dart';

/// Properties specific to the Backend Type.
class BackendProperties {
  /// Backend Service Fabric Cluster Properties
  final pulumi.Input<BackendServiceFabricClusterProperties>? serviceFabricCluster;

  /// Creates a new [BackendProperties].
  /// [serviceFabricCluster] Backend Service Fabric Cluster Properties
  const BackendProperties({
    this.serviceFabricCluster,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceFabricCluster': ?pulumi.Input.mapOptionalInputValue<BackendServiceFabricClusterProperties, Map<String, dynamic>>(serviceFabricCluster, (value) => value.toMap()),
    };
  }

  factory BackendProperties.fromMap(Map<String, dynamic> map) {
    return BackendProperties(
      serviceFabricCluster: (() { final guardedValue = map['serviceFabricCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendServiceFabricClusterProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

