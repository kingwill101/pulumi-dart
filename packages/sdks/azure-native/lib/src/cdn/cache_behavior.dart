import 'package:pulumi/pulumi.dart' as pulumi;

/// Caching behavior for the requests
enum CacheBehavior implements pulumi.PulumiEnum<String> {
  bypassCache("BypassCache"),
  override("Override"),
  setIfMissing("SetIfMissing");

  const CacheBehavior(this.wireValue);
  @override
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
