/// Eviction Policy to follow when evicting Spot VMs.
enum EvictionPolicy {
  delete("Delete"),
  deallocate("Deallocate");

  const EvictionPolicy(this.wireValue);
  final String wireValue;

  static EvictionPolicy fromValue(String value) {
    for (final item in EvictionPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EvictionPolicy value: $value');
  }
}
