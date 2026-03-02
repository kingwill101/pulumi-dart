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
  VirtualServiceSpecProvider({
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
      virtualNode: map['virtualNode'] == null ? null : ((VirtualServiceSpecProviderVirtualNode.fromMap((map['virtualNode']! as Map).cast<String, dynamic>())).input()).input(),
      virtualRouter: map['virtualRouter'] == null ? null : ((VirtualServiceSpecProviderVirtualRouter.fromMap((map['virtualRouter']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

