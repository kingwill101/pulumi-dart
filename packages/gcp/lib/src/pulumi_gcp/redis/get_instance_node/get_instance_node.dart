// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceNode {
  /// Node identifying string. e.g. 'node-0', 'node-1'
  final String id;

  /// Location of the node.
  final String zone;

  GetInstanceNode({
    required this.id,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['zone'] = zone;
    return map;
  }

  factory GetInstanceNode.fromMap(Map<String, dynamic> map) {
    return GetInstanceNode(
      id: map['id'] as String,
      zone: map['zone'] as String,
    );
  }
}
