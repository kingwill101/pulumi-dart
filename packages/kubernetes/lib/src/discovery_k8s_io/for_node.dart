// ignore_for_file: unused_element, unnecessary_cast


/// ForNode provides information about which nodes should consume this endpoint.
class ForNode {
  /// name represents the name of the node.
  final String name;

  /// Creates a new [ForNode].
  /// [name] name represents the name of the node.
  ForNode({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory ForNode.fromMap(Map<String, dynamic> map) {
    return ForNode(
      name: map['name'] as String,
    );
  }
}

