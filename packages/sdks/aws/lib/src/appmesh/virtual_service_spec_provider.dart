// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_service_spec_provider_virtual_node.dart';
import 'virtual_service_spec_provider_virtual_router.dart';

class VirtualServiceSpecProvider {
  /// Virtual node associated with a virtual service.
  final pulumi.Input<VirtualServiceSpecProviderVirtualNode>? virtualNode;
  /// Virtual router associated with a virtual service.
  final pulumi.Input<VirtualServiceSpecProviderVirtualRouter>? virtualRouter;

  /// Creates a new [VirtualServiceSpecProvider].
  /// [virtualNode] Virtual node associated with a virtual service.
  /// [virtualRouter] Virtual router associated with a virtual service.
  const VirtualServiceSpecProvider({
    this.virtualNode,
    this.virtualRouter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'virtualNode': ?pulumi.Input.mapOptionalInputValue<VirtualServiceSpecProviderVirtualNode, Map<String, dynamic>>(virtualNode, (value) => value.toMap()),
      'virtualRouter': ?pulumi.Input.mapOptionalInputValue<VirtualServiceSpecProviderVirtualRouter, Map<String, dynamic>>(virtualRouter, (value) => value.toMap()),
    };
  }

  factory VirtualServiceSpecProvider.fromMap(Map<String, dynamic> map) {
    return VirtualServiceSpecProvider(
      virtualNode: (() { final guardedValue = map['virtualNode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualServiceSpecProviderVirtualNode.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      virtualRouter: (() { final guardedValue = map['virtualRouter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualServiceSpecProviderVirtualRouter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

