// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'istio_service_mesh.dart';

/// Service mesh profile for a managed cluster.
class ServiceMeshProfile {
  /// Istio service mesh configuration.
  final pulumi.Input<IstioServiceMesh?>? istio;
  /// Mode of the service mesh.
  final pulumi.Input<dynamic> mode;

  /// Creates a new [ServiceMeshProfile].
  /// [istio] Istio service mesh configuration.
  /// [mode] Mode of the service mesh.
  const ServiceMeshProfile({
    this.istio,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'istio': ?pulumi.Input.mapOptionalInputValue<IstioServiceMesh, Map<String, dynamic>>(istio, (value) => value.toMap()),
      'mode': mode,
    };
  }

  factory ServiceMeshProfile.fromMap(Map<String, dynamic> map) {
    return ServiceMeshProfile(
      istio: (() { final guardedValue = map['istio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IstioServiceMesh.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mode: pulumi.Input.fromValue(map['mode']),
    );
  }
}
