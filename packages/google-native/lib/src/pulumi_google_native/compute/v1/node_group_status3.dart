enum NodeGroupStatus3 {
  creating("CREATING"),
  deleting("DELETING"),
  invalid("INVALID"),
  ready("READY");

  const NodeGroupStatus3(this.value);
  final String value;

  static NodeGroupStatus3 fromValue(String value) {
    for (final item in NodeGroupStatus3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeGroupStatus3 value: $value');
  }
}
