// ignore_for_file: unused_element, unnecessary_cast


class InstanceNode {
  /// (Output)
  /// Node identifying string. e.g. 'node-0', 'node-1'
  final String? id;
  /// (Output)
  /// Location of the node.
  final String? zone;

  /// Creates a new [InstanceNode].
  /// [id] (Output)
  /// [zone] (Output)
  InstanceNode({
    this.id,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'zone': ?zone,
    };
  }

  factory InstanceNode.fromMap(Map<String, dynamic> map) {
    return InstanceNode(
      id: map['id'] == null ? null : map['id'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}

