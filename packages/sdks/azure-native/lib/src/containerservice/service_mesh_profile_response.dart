// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'istio_service_mesh_response.dart';

/// Service mesh profile for a managed cluster.
class ServiceMeshProfileResponse {
  /// Istio service mesh configuration.
  final pulumi.Input<IstioServiceMeshResponse?>? istio;
  /// Mode of the service mesh.
  final pulumi.Input<String> mode;

  /// Creates a new [ServiceMeshProfileResponse].
  /// [istio] Istio service mesh configuration.
  /// [mode] Mode of the service mesh.
  const ServiceMeshProfileResponse({
    this.istio,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'istio': ?pulumi.Input.mapOptionalInputValue<IstioServiceMeshResponse, Map<String, dynamic>>(istio, (value) => value.toMap()),
      'mode': mode,
    };
  }

  factory ServiceMeshProfileResponse.fromMap(Map<String, dynamic> map) {
    return ServiceMeshProfileResponse(
      istio: (() { final guardedValue = map['istio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IstioServiceMeshResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
