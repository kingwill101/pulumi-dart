import 'package:pulumi/pulumi.dart' as pulumi;

/// CacheMode enum
enum CacheMode implements pulumi.PulumiEnum<String> {
  lOCALCUSTOMCACHE("LOCAL_CUSTOM_CACHE"),
  lOCALDOCKERLAYERCACHE("LOCAL_DOCKER_LAYER_CACHE"),
  lOCALSOURCECACHE("LOCAL_SOURCE_CACHE");

  const CacheMode(this.wireValue);
  @override
  final String wireValue;

  static CacheMode fromValue(String value) {
    for (final item in CacheMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CacheMode value: $value');
  }
}
