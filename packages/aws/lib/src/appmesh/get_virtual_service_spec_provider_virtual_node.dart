// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualServiceSpecProviderVirtualNode {
  final String virtualNodeName;

  /// Creates a new [GetVirtualServiceSpecProviderVirtualNode].
  /// [virtualNodeName] Required.
  GetVirtualServiceSpecProviderVirtualNode({
    required this.virtualNodeName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['virtualNodeName'] = virtualNodeName;
    return map;
  }

  factory GetVirtualServiceSpecProviderVirtualNode.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualServiceSpecProviderVirtualNode(
      virtualNodeName: map['virtualNodeName'] as String,
    );
  }
}
