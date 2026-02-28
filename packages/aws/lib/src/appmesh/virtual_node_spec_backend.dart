// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_node_spec_backend_virtual_service.dart';

class VirtualNodeSpecBackend {
  /// Virtual service to use as a backend for a virtual node.
  final VirtualNodeSpecBackendVirtualService virtualService;

  /// Creates a new [VirtualNodeSpecBackend].
  /// [virtualService] Virtual service to use as a backend for a virtual node.
  VirtualNodeSpecBackend({
    required this.virtualService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'virtualService': virtualService.toMap(),
    };
  }

  factory VirtualNodeSpecBackend.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecBackend(
      virtualService: VirtualNodeSpecBackendVirtualService.fromMap((map['virtualService'] as Map).cast<String, dynamic>()),
    );
  }
}

