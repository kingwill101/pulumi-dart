/// Caching behavior for the requests
enum RuleCacheBehavior {
  honorOrigin("HonorOrigin"),
  overrideAlways("OverrideAlways"),
  overrideIfOriginMissing("OverrideIfOriginMissing");

  const RuleCacheBehavior(this.wireValue);
  final String wireValue;

  static RuleCacheBehavior fromValue(String value) {
    for (final item in RuleCacheBehavior.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleCacheBehavior value: $value');
  }
}
