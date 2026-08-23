// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec_backend_virtual_service_client_policy.dart';

class VirtualNodeSpecBackendVirtualService {
  /// Default client policy for virtual service backends. See `spec.backend_defaults.client_policy` Block for details.
  final pulumi.Input<VirtualNodeSpecBackendVirtualServiceClientPolicy>? clientPolicy;
  /// Name of the virtual service that is acting as a virtual node backend. Must be between 1 and 255 characters in length.
  final pulumi.Input<String> virtualServiceName;

  /// Creates a new [VirtualNodeSpecBackendVirtualService].
  /// [clientPolicy] Default client policy for virtual service backends. See `spec.backend_defaults.client_policy` Block for details.
  /// [virtualServiceName] Name of the virtual service that is acting as a virtual node backend. Must be between 1 and 255 characters in length.
  const VirtualNodeSpecBackendVirtualService({
    this.clientPolicy,
    required this.virtualServiceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientPolicy': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecBackendVirtualServiceClientPolicy, Map<String, dynamic>>(clientPolicy, (value) => value.toMap()),
      'virtualServiceName': virtualServiceName,
    };
  }

  factory VirtualNodeSpecBackendVirtualService.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecBackendVirtualService(
      clientPolicy: (() { final guardedValue = map['clientPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNodeSpecBackendVirtualServiceClientPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      virtualServiceName: pulumi.Input.fromValue(map['virtualServiceName'] as String),
    );
  }
}
