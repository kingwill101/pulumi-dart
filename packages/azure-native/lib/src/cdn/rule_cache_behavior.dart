/// Caching behavior for the requests
enum RuleCacheBehavior {
  honorOrigin("HonorOrigin"),
  overrideAlways("OverrideAlways"),
  overrideIfOriginMissing("OverrideIfOriginMissing");

  const RuleCacheBehavior(this.value);
  final String value;

  static RuleCacheBehavior fromValue(String value) {
    for (final item in RuleCacheBehavior.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleCacheBehavior value: $value');
  }
}

