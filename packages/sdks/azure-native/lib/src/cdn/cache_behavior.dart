/// Caching behavior for the requests
enum CacheBehavior {
  bypassCache("BypassCache"),
  override("Override"),
  setIfMissing("SetIfMissing");

  const CacheBehavior(this.wireValue);
  final String wireValue;

  static CacheBehavior fromValue(String value) {
    for (final item in CacheBehavior.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CacheBehavior value: $value');
  }
}
