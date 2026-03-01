// ignore_for_file: unused_element, unnecessary_cast

import 'istio_service_mesh.dart';

/// Service mesh profile for a managed cluster.
class ServiceMeshProfile {
  /// Istio service mesh configuration.
  final IstioServiceMesh? istio;
  /// Mode of the service mesh.
  final String mode;

  /// Creates a new [ServiceMeshProfile].
  /// [istio] Istio service mesh configuration.
  /// [mode] Mode of the service mesh.
  ServiceMeshProfile({
    this.istio,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'istio': ?istio == null ? null : istio!.toMap(),
      'mode': mode,
    };
  }

  factory ServiceMeshProfile.fromMap(Map<String, dynamic> map) {
    return ServiceMeshProfile(
      istio: map['istio'] == null ? null : IstioServiceMesh.fromMap((map['istio'] as Map).cast<String, dynamic>()),
      mode: map['mode'] as String,
    );
  }
}

