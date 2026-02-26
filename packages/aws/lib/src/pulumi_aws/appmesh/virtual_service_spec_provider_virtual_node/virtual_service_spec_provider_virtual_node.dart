// ignore_for_file: unused_element, unnecessary_cast

class VirtualServiceSpecProviderVirtualNode {
  /// Name of the virtual node that is acting as a service provider. Must be between 1 and 255 characters in length.
  final String virtualNodeName;

  VirtualServiceSpecProviderVirtualNode({
    required this.virtualNodeName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['virtualNodeName'] = virtualNodeName;
    return map;
  }

  factory VirtualServiceSpecProviderVirtualNode.fromMap(
      Map<String, dynamic> map) {
    return VirtualServiceSpecProviderVirtualNode(
      virtualNodeName: map['virtualNodeName'] as String,
    );
  }
}
