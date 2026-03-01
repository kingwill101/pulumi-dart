// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_service_spec_provider_virtual_node.dart';
import 'virtual_service_spec_provider_virtual_router.dart';

class VirtualServiceSpecProvider {
  /// Virtual node associated with a virtual service.
  final VirtualServiceSpecProviderVirtualNode? virtualNode;

  /// Virtual router associated with a virtual service.
  final VirtualServiceSpecProviderVirtualRouter? virtualRouter;

  /// Creates a new [VirtualServiceSpecProvider].
  /// [virtualNode] Virtual node associated with a virtual service.
  /// [virtualRouter] Virtual router associated with a virtual service.
  VirtualServiceSpecProvider({this.virtualNode, this.virtualRouter});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'virtualNode': ?virtualNode == null ? null : virtualNode!.toMap(),
      'virtualRouter': ?virtualRouter == null ? null : virtualRouter!.toMap(),
    };
  }

  factory VirtualServiceSpecProvider.fromMap(Map<String, dynamic> map) {
    return VirtualServiceSpecProvider(
      virtualNode: map['virtualNode'] == null
          ? null
          : VirtualServiceSpecProviderVirtualNode.fromMap(
              (map['virtualNode'] as Map).cast<String, dynamic>(),
            ),
      virtualRouter: map['virtualRouter'] == null
          ? null
          : VirtualServiceSpecProviderVirtualRouter.fromMap(
              (map['virtualRouter'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
