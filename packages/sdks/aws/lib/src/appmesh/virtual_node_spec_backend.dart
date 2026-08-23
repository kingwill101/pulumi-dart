// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec_backend_virtual_service.dart';

class VirtualNodeSpecBackend {
  /// Virtual service to use as a backend for a virtual node. See `spec.backend.virtual_service` Block for details.
  final pulumi.Input<VirtualNodeSpecBackendVirtualService> virtualService;

  /// Creates a new [VirtualNodeSpecBackend].
  /// [virtualService] Virtual service to use as a backend for a virtual node. See `spec.backend.virtual_service` Block for details.
  const VirtualNodeSpecBackend({
    required this.virtualService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'virtualService': pulumi.Input.mapInputValue<VirtualNodeSpecBackendVirtualService, Map<String, dynamic>>(virtualService, (value) => value.toMap()),
    };
  }

  factory VirtualNodeSpecBackend.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecBackend(
      virtualService: pulumi.Input.fromValue(VirtualNodeSpecBackendVirtualService.fromMap((map['virtualService']! as Map).cast<String, dynamic>())),
    );
  }
}
