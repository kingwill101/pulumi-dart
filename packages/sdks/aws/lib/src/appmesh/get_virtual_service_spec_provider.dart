// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_service_spec_provider_virtual_node.dart';
import 'get_virtual_service_spec_provider_virtual_router.dart';

class GetVirtualServiceSpecProvider {
  final pulumi.Input<List<GetVirtualServiceSpecProviderVirtualNode>> virtualNodes;
  final pulumi.Input<List<GetVirtualServiceSpecProviderVirtualRouter>> virtualRouters;

  /// Creates a new [GetVirtualServiceSpecProvider].
  /// [virtualNodes] Required.
  /// [virtualRouters] Required.
  const GetVirtualServiceSpecProvider({
    required this.virtualNodes,
    required this.virtualRouters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'virtualNodes': pulumi.Input.mapInputValue<List<GetVirtualServiceSpecProviderVirtualNode>, List<Map<String, dynamic>>>(virtualNodes, (value) => pulumi.Input.encodeList<GetVirtualServiceSpecProviderVirtualNode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'virtualRouters': pulumi.Input.mapInputValue<List<GetVirtualServiceSpecProviderVirtualRouter>, List<Map<String, dynamic>>>(virtualRouters, (value) => pulumi.Input.encodeList<GetVirtualServiceSpecProviderVirtualRouter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualServiceSpecProvider.fromMap(Map<String, dynamic> map) {
    return GetVirtualServiceSpecProvider(
      virtualNodes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualServiceSpecProviderVirtualNode>(map['virtualNodes']!, (value) => GetVirtualServiceSpecProviderVirtualNode.fromMap((value as Map).cast<String, dynamic>()))),
      virtualRouters: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualServiceSpecProviderVirtualRouter>(map['virtualRouters']!, (value) => GetVirtualServiceSpecProviderVirtualRouter.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

