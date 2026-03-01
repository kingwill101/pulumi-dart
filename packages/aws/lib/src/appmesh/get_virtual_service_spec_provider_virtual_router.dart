// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualServiceSpecProviderVirtualRouter {
  final String virtualRouterName;

  /// Creates a new [GetVirtualServiceSpecProviderVirtualRouter].
  /// [virtualRouterName] Required.
  GetVirtualServiceSpecProviderVirtualRouter({required this.virtualRouterName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'virtualRouterName': virtualRouterName};
  }

  factory GetVirtualServiceSpecProviderVirtualRouter.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualServiceSpecProviderVirtualRouter(
      virtualRouterName: map['virtualRouterName'] as String,
    );
  }
}
