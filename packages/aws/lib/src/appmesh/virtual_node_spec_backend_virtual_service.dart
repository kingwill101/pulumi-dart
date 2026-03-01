// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_node_spec_backend_virtual_service_client_policy.dart';

class VirtualNodeSpecBackendVirtualService {
  /// Client policy for the backend.
  final VirtualNodeSpecBackendVirtualServiceClientPolicy? clientPolicy;

  /// Name of the virtual service that is acting as a virtual node backend. Must be between 1 and 255 characters in length.
  final String virtualServiceName;

  /// Creates a new [VirtualNodeSpecBackendVirtualService].
  /// [clientPolicy] Client policy for the backend.
  /// [virtualServiceName] Name of the virtual service that is acting as a virtual node backend. Must be between 1 and 255 characters in length.
  VirtualNodeSpecBackendVirtualService({
    this.clientPolicy,
    required this.virtualServiceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientPolicy': ?clientPolicy == null ? null : clientPolicy!.toMap(),
      'virtualServiceName': virtualServiceName,
    };
  }

  factory VirtualNodeSpecBackendVirtualService.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualNodeSpecBackendVirtualService(
      clientPolicy: map['clientPolicy'] == null
          ? null
          : VirtualNodeSpecBackendVirtualServiceClientPolicy.fromMap(
              (map['clientPolicy'] as Map).cast<String, dynamic>(),
            ),
      virtualServiceName: map['virtualServiceName'] as String,
    );
  }
}
