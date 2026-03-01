enum NodeGroupStatusComputeV1 {
  creating("CREATING"),
  deleting("DELETING"),
  invalid("INVALID"),
  ready("READY");

  const NodeGroupStatusComputeV1(this.value);
  final String value;

  static NodeGroupStatusComputeV1 fromValue(String value) {
    for (final item in NodeGroupStatusComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeGroupStatusComputeV1 value: $value');
  }
}
