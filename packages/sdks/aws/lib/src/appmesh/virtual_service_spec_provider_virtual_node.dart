// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualServiceSpecProviderVirtualNode {
  /// Name of the virtual node that is acting as a service provider. Must be between 1 and 255 characters in length.
  final pulumi.Input<String> virtualNodeName;

  /// Creates a new [VirtualServiceSpecProviderVirtualNode].
  /// [virtualNodeName] Name of the virtual node that is acting as a service provider. Must be between 1 and 255 characters in length.
  VirtualServiceSpecProviderVirtualNode({required this.virtualNodeName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'virtualNodeName': virtualNodeName};
  }

  factory VirtualServiceSpecProviderVirtualNode.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualServiceSpecProviderVirtualNode(
      virtualNodeName: pulumi.Input.fromValue(map['virtualNodeName'] as String),
    );
  }
}
