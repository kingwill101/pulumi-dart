/// The node type deployed in the node group.
enum NodeKind {
  valueShard("Shard");

  const NodeKind(this.value);
  final String value;

  static NodeKind fromValue(String value) {
    for (final item in NodeKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeKind value: $value');
  }
}

