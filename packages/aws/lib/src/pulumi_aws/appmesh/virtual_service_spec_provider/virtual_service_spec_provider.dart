// ignore_for_file: unused_element, unnecessary_cast

import '../virtual_service_spec_provider_virtual_node/virtual_service_spec_provider_virtual_node.dart';
import '../virtual_service_spec_provider_virtual_router/virtual_service_spec_provider_virtual_router.dart';

class VirtualServiceSpecProvider {
  /// Virtual node associated with a virtual service.
  final VirtualServiceSpecProviderVirtualNode? virtualNode;

  /// Virtual router associated with a virtual service.
  final VirtualServiceSpecProviderVirtualRouter? virtualRouter;

  VirtualServiceSpecProvider({
    this.virtualNode,
    this.virtualRouter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final virtualNodeValue = virtualNode;
    if (virtualNodeValue != null) {
      map['virtualNode'] = virtualNodeValue.toMap();
    }
    final virtualRouterValue = virtualRouter;
    if (virtualRouterValue != null) {
      map['virtualRouter'] = virtualRouterValue.toMap();
    }
    return map;
  }

  factory VirtualServiceSpecProvider.fromMap(Map<String, dynamic> map) {
    return VirtualServiceSpecProvider(
      virtualNode: map['virtualNode'] == null
          ? null
          : VirtualServiceSpecProviderVirtualNode.fromMap(
              (map['virtualNode'] as Map).cast<String, dynamic>()),
      virtualRouter: map['virtualRouter'] == null
          ? null
          : VirtualServiceSpecProviderVirtualRouter.fromMap(
              (map['virtualRouter'] as Map).cast<String, dynamic>()),
    );
  }
}
