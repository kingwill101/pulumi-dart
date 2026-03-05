/// The node type deployed in the node group.
enum NodeKind {
  valueShard("Shard");

  const NodeKind(this.wireValue);
  final String wireValue;

  static NodeKind fromValue(String value) {
    for (final item in NodeKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeKind value: $value');
  }
}

