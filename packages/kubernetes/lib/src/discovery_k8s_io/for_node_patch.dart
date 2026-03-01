// ignore_for_file: unused_element, unnecessary_cast


/// ForNode provides information about which nodes should consume this endpoint.
class ForNodePatch {
  /// name represents the name of the node.
  final String? name;

  /// Creates a new [ForNodePatch].
  /// [name] name represents the name of the node.
  ForNodePatch({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory ForNodePatch.fromMap(Map<String, dynamic> map) {
    return ForNodePatch(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

