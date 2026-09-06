import 'package:pulumi/pulumi.dart' as pulumi;

/// The level at which the content needs to be cached.
enum CacheType implements pulumi.PulumiEnum<String> {
  all("All");

  const CacheType(this.wireValue);
  @override
  final String wireValue;

  static CacheType fromValue(String value) {
    for (final item in CacheType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CacheType value: $value');
  }
}
