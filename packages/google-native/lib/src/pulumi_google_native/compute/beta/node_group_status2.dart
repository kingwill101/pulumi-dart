enum NodeGroupStatus2 {
  creating("CREATING"),
  deleting("DELETING"),
  invalid("INVALID"),
  ready("READY");

  const NodeGroupStatus2(this.value);
  final String value;

  static NodeGroupStatus2 fromValue(String value) {
    for (final item in NodeGroupStatus2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeGroupStatus2 value: $value');
  }
}
