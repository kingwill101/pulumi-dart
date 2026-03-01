/// Redis eviction policy - default is VolatileLRU
enum EvictionPolicy {
  valueAllKeysLFU("AllKeysLFU"),
  valueAllKeysLRU("AllKeysLRU"),
  valueAllKeysRandom("AllKeysRandom"),
  valueVolatileLRU("VolatileLRU"),
  valueVolatileLFU("VolatileLFU"),
  valueVolatileTTL("VolatileTTL"),
  valueVolatileRandom("VolatileRandom"),
  valueNoEviction("NoEviction");

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

