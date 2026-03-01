// ignore_for_file: unused_element, unnecessary_cast


/// The node image upgrade to be applied to the target nodes in update run.
class NodeImageSelection {
  /// The node image upgrade type.
  final String type;

  /// Creates a new [NodeImageSelection].
  /// [type] The node image upgrade type.
  NodeImageSelection({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory NodeImageSelection.fromMap(Map<String, dynamic> map) {
    return NodeImageSelection(
      type: map['type'] as String,
    );
  }
}

