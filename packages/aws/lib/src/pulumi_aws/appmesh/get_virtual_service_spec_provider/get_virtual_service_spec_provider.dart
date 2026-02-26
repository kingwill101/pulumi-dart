// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_virtual_service_spec_provider_virtual_node/get_virtual_service_spec_provider_virtual_node.dart';
import '../get_virtual_service_spec_provider_virtual_router/get_virtual_service_spec_provider_virtual_router.dart';

class GetVirtualServiceSpecProvider {
  final List<GetVirtualServiceSpecProviderVirtualNode> virtualNodes;
  final List<GetVirtualServiceSpecProviderVirtualRouter> virtualRouters;

  GetVirtualServiceSpecProvider({
    required this.virtualNodes,
    required this.virtualRouters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['virtualNodes'] = Input.encodeList<
        GetVirtualServiceSpecProviderVirtualNode,
        Map<String, dynamic>>(virtualNodes, (value) => value.toMap());
    map['virtualRouters'] = Input.encodeList<
        GetVirtualServiceSpecProviderVirtualRouter,
        Map<String, dynamic>>(virtualRouters, (value) => value.toMap());
    return map;
  }

  factory GetVirtualServiceSpecProvider.fromMap(Map<String, dynamic> map) {
    return GetVirtualServiceSpecProvider(
      virtualNodes: Input.decodeList<GetVirtualServiceSpecProviderVirtualNode>(
          map['virtualNodes'],
          (value) => GetVirtualServiceSpecProviderVirtualNode.fromMap(
              (value as Map).cast<String, dynamic>())),
      virtualRouters:
          Input.decodeList<GetVirtualServiceSpecProviderVirtualRouter>(
              map['virtualRouters'],
              (value) => GetVirtualServiceSpecProviderVirtualRouter.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
