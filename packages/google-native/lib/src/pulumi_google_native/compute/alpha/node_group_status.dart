enum NodeGroupStatus {
  creating("CREATING"),
  deleting("DELETING"),
  invalid("INVALID"),
  ready("READY");

  const NodeGroupStatus(this.value);
  final String value;

  static NodeGroupStatus fromValue(String value) {
    for (final item in NodeGroupStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeGroupStatus value: $value');
  }
}
