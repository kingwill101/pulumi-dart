/// Eviction Policy to follow when evicting Spot VMs.
enum EvictionPolicy {
  delete("Delete"),
  deallocate("Deallocate");

  const EvictionPolicy(this.value);
  final String value;

  static EvictionPolicy fromValue(String value) {
    for (final item in EvictionPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EvictionPolicy value: $value');
  }
}

