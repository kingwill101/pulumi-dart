// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualServiceSpecProviderVirtualRouter {
  /// Name of the virtual router that is acting as a service provider. Must be between 1 and 255 characters in length.
  final pulumi.Input<String> virtualRouterName;

  /// Creates a new [VirtualServiceSpecProviderVirtualRouter].
  /// [virtualRouterName] Name of the virtual router that is acting as a service provider. Must be between 1 and 255 characters in length.
  VirtualServiceSpecProviderVirtualRouter({required this.virtualRouterName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'virtualRouterName': virtualRouterName};
  }

  factory VirtualServiceSpecProviderVirtualRouter.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualServiceSpecProviderVirtualRouter(
      virtualRouterName: pulumi.Input.fromValue(
        map['virtualRouterName'] as String,
      ),
    );
  }
}
