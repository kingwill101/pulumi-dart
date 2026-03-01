/// The Virtual Machine Scale Set eviction policy to use. This cannot be specified unless the scaleSetPriority is 'Spot'. If not specified, the default is 'Delete'.
enum ScaleSetEvictionPolicy {
  valueDelete("Delete"),
  valueDeallocate("Deallocate");

  const ScaleSetEvictionPolicy(this.value);
  final String value;

  static ScaleSetEvictionPolicy fromValue(String value) {
    for (final item in ScaleSetEvictionPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScaleSetEvictionPolicy value: $value');
  }
}

