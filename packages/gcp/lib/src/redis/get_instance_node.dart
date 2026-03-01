// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceNode {
  /// Node identifying string. e.g. 'node-0', 'node-1'
  final String id;

  /// Location of the node.
  final String zone;

  /// Creates a new [GetInstanceNode].
  /// [id] Node identifying string. e.g. 'node-0', 'node-1'
  /// [zone] Location of the node.
  GetInstanceNode({required this.id, required this.zone});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'zone': zone};
  }

  factory GetInstanceNode.fromMap(Map<String, dynamic> map) {
    return GetInstanceNode(
      id: map['id'] as String,
      zone: map['zone'] as String,
    );
  }
}
