// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualServiceSpecProviderVirtualRouter {
  final String virtualRouterName;

  GetVirtualServiceSpecProviderVirtualRouter({
    required this.virtualRouterName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['virtualRouterName'] = virtualRouterName;
    return map;
  }

  factory GetVirtualServiceSpecProviderVirtualRouter.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualServiceSpecProviderVirtualRouter(
      virtualRouterName: map['virtualRouterName'] as String,
    );
  }
}
