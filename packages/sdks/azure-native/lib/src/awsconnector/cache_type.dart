import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum CacheType implements pulumi.PulumiEnum<String> {
  lOCAL("LOCAL"),
  nOCACHE("NO_CACHE"),
  s3("S3");

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
