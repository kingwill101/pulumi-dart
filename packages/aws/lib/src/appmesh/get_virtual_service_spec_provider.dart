// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_service_spec_provider_virtual_node.dart';
import 'get_virtual_service_spec_provider_virtual_router.dart';

class GetVirtualServiceSpecProvider {
  final List<GetVirtualServiceSpecProviderVirtualNode> virtualNodes;
  final List<GetVirtualServiceSpecProviderVirtualRouter> virtualRouters;

  /// Creates a new [GetVirtualServiceSpecProvider].
  /// [virtualNodes] Required.
  /// [virtualRouters] Required.
  GetVirtualServiceSpecProvider({
    required this.virtualNodes,
    required this.virtualRouters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['virtualNodes'] = pulumi.Input.encodeList<
        GetVirtualServiceSpecProviderVirtualNode,
        Map<String, dynamic>>(virtualNodes, (value) => value.toMap());
    map['virtualRouters'] = pulumi.Input.encodeList<
        GetVirtualServiceSpecProviderVirtualRouter,
        Map<String, dynamic>>(virtualRouters, (value) => value.toMap());
    return map;
  }

  factory GetVirtualServiceSpecProvider.fromMap(Map<String, dynamic> map) {
    return GetVirtualServiceSpecProvider(
      virtualNodes:
          pulumi.Input.decodeList<GetVirtualServiceSpecProviderVirtualNode>(
              map['virtualNodes'],
              (value) => GetVirtualServiceSpecProviderVirtualNode.fromMap(
                  (value as Map).cast<String, dynamic>())),
      virtualRouters:
          pulumi.Input.decodeList<GetVirtualServiceSpecProviderVirtualRouter>(
              map['virtualRouters'],
              (value) => GetVirtualServiceSpecProviderVirtualRouter.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
