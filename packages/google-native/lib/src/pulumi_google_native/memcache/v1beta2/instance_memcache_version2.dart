/// The major version of Memcached software. If not provided, latest supported version will be used. Currently the latest supported major version is `MEMCACHE_1_5`. The minor version will be automatically determined by our system based on the latest supported minor version.
enum InstanceMemcacheVersion2 {
  memcacheVersionUnspecified("MEMCACHE_VERSION_UNSPECIFIED"),
  memcache15("MEMCACHE_1_5"),
  memcache1615("MEMCACHE_1_6_15");

  const InstanceMemcacheVersion2(this.value);
  final String value;

  static InstanceMemcacheVersion2 fromValue(String value) {
    for (final item in InstanceMemcacheVersion2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceMemcacheVersion2 value: $value');
  }
}
