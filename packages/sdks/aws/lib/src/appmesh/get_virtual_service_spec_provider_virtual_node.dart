// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualServiceSpecProviderVirtualNode {
  final pulumi.Input<String> virtualNodeName;

  /// Creates a new [GetVirtualServiceSpecProviderVirtualNode].
  /// [virtualNodeName] Required.
  GetVirtualServiceSpecProviderVirtualNode({
    required this.virtualNodeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'virtualNodeName': virtualNodeName,
    };
  }

  factory GetVirtualServiceSpecProviderVirtualNode.fromMap(Map<String, dynamic> map) {
    return GetVirtualServiceSpecProviderVirtualNode(
      virtualNodeName: (map['virtualNodeName'] as String).input(),
    );
  }
}

