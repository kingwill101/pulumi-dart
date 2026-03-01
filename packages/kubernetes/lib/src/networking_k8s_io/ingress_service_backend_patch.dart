// ignore_for_file: unused_element, unnecessary_cast

import 'service_backend_port_patch.dart';

/// IngressServiceBackend references a Kubernetes Service as a Backend.
class IngressServiceBackendPatch {
  /// name is the referenced service. The service must exist in the same namespace as the Ingress object.
  final String? name;
  /// port of the referenced service. A port name or port number is required for a IngressServiceBackend.
  final ServiceBackendPortPatch? port;

  /// Creates a new [IngressServiceBackendPatch].
  /// [name] name is the referenced service. The service must exist in the same namespace as the Ingress object.
  /// [port] port of the referenced service. A port name or port number is required for a IngressServiceBackend.
  IngressServiceBackendPatch({
    this.name,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'port': ?port == null ? null : port!.toMap(),
    };
  }

  factory IngressServiceBackendPatch.fromMap(Map<String, dynamic> map) {
    return IngressServiceBackendPatch(
      name: map['name'] == null ? null : map['name'] as String,
      port: map['port'] == null ? null : ServiceBackendPortPatch.fromMap((map['port'] as Map).cast<String, dynamic>()),
    );
  }
}

