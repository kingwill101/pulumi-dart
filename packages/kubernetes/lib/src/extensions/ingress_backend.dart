// ignore_for_file: unused_element, unnecessary_cast

import '../core/typed_local_object_reference.dart';

/// IngressBackend describes all endpoints for a given service and port.
class IngressBackend {
  /// Resource is an ObjectRef to another Kubernetes resource in the namespace of the Ingress object. If resource is specified, serviceName and servicePort must not be specified.
  final TypedLocalObjectReference? resource;
  /// Specifies the name of the referenced service.
  final String serviceName;
  /// Specifies the port of the referenced service.
  final int servicePort;

  /// Creates a new [IngressBackend].
  /// [resource] Resource is an ObjectRef to another Kubernetes resource in the namespace of the Ingress object. If resource is specified, serviceName and servicePort must not be specified.
  /// [serviceName] Specifies the name of the referenced service.
  /// [servicePort] Specifies the port of the referenced service.
  IngressBackend({
    this.resource,
    required this.serviceName,
    required this.servicePort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resource': ?resource == null ? null : resource!.toMap(),
      'serviceName': serviceName,
      'servicePort': servicePort,
    };
  }

  factory IngressBackend.fromMap(Map<String, dynamic> map) {
    return IngressBackend(
      resource: map['resource'] == null ? null : TypedLocalObjectReference.fromMap((map['resource'] as Map).cast<String, dynamic>()),
      serviceName: map['serviceName'] as String,
      servicePort: map['servicePort'] as int,
    );
  }
}

