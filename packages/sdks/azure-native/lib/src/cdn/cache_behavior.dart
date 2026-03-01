/// Caching behavior for the requests
enum CacheBehavior {
  bypassCache("BypassCache"),
  override("Override"),
  setIfMissing("SetIfMissing");

  const CacheBehavior(this.value);
  final String value;

  static CacheBehavior fromValue(String value) {
    for (final item in CacheBehavior.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CacheBehavior value: $value');
  }
}

