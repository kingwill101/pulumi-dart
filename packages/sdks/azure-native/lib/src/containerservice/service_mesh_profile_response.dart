// ignore_for_file: unused_element, unnecessary_cast

import 'istio_service_mesh_response.dart';

/// Service mesh profile for a managed cluster.
class ServiceMeshProfileResponse {
  /// Istio service mesh configuration.
  final IstioServiceMeshResponse? istio;
  /// Mode of the service mesh.
  final String mode;

  /// Creates a new [ServiceMeshProfileResponse].
  /// [istio] Istio service mesh configuration.
  /// [mode] Mode of the service mesh.
  ServiceMeshProfileResponse({
    this.istio,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'istio': ?istio == null ? null : istio!.toMap(),
      'mode': mode,
    };
  }

  factory ServiceMeshProfileResponse.fromMap(Map<String, dynamic> map) {
    return ServiceMeshProfileResponse(
      istio: map['istio'] == null ? null : IstioServiceMeshResponse.fromMap((map['istio'] as Map).cast<String, dynamic>()),
      mode: map['mode'] as String,
    );
  }
}

